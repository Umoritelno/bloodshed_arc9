local meta = FindMetaTable("Player")
util.AddNetworkString("MuR.UseShop")

net.Receive("MuR.UseShop", function(len, ply)
	local str = net.ReadString()
	local id = net.ReadFloat()
	ply:BuyItem(str, id)
end)

function meta:BuyItem(cat, id)
	if self:GetNWFloat("Guilt") >= 50 then
		MuR:GiveAnnounce("money_cancel", self)
		return
	end
	
	local iteminfo = GetItemInfo(cat,id)
	local tab = MuR.Shop[cat]
	if cat == "Soldier" and not MuR.War and self:GetNWString("Class") != "Soldier" or cat == "Killer" and not self:IsKiller() then return end
	if not istable(tab) or not tab[id] then return end
	if !self.ShopBoughtItems[cat] then self.ShopBoughtItems[cat] = {} end
	if (self.ShopBoughtItems[cat][id] and iteminfo.max and self.ShopBoughtItems[cat][id] >= iteminfo.max) then
		MuR:GiveAnnounce("money_limit", self)
		return
	end
	if self:GetNWFloat("Money") < iteminfo.price then return end
	self.ShopBoughtItems[cat][id] = self.ShopBoughtItems[cat][id] and self.ShopBoughtItems[cat][id] + 1 or 1
	self:SetNWFloat("Money", self:GetNWFloat("Money") - iteminfo.price)
	iteminfo.func(self)
end