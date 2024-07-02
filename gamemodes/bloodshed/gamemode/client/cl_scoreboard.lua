local scoreboard = nil

local function CreateScoreboard()
	if IsValid(scoreboard) then return end
	scoreboard = vgui.Create("DPanel")
	scoreboard:SetSize(We(500), He(660))
	scoreboard:Center()
	scoreboard:AlphaTo(0, 0)
	scoreboard:AlphaTo(255, 0.2)
	scoreboard:MakePopup()

	scoreboard.Paint = function(self, w, h)
		draw.RoundedBox(16, 0, 0, w, h, Color(0, 0, 0, 240))
		draw.RoundedBox(0, w - We(16), 0, We(16), h, Color(220, 220, 220))
	end

	local title = vgui.Create("DLabel", scoreboard)
	if MuR.GamemodeCount > 0 then
		title:SetText("  " .. MuR.Language["plylist"] .. "  |  " .. MuR.Language["startscreen_gamemode"] .. MuR.Language["gamename"..MuR.GamemodeCount])
	else
		title:SetText("  " .. MuR.Language["plylist"])
	end
	title:SetFont("MuR_Font1")
	title:SetTextColor(Color(255, 255, 255))
	title:SetSize(We(200), He(40))
	title:SetPos(We(150), He(10))
	local scrollPanel = vgui.Create("DScrollPanel", scoreboard)
	scrollPanel:SetSize(We(500), He(660))
	local playerList = vgui.Create("DListLayout", scrollPanel)
	local xx, yy = scrollPanel:GetSize()
	playerList:SetSize(xx - 20, yy)
	playerList:Add(title)

	for _, ply in ipairs(player.GetAll()) do
		local playerPanel = vgui.Create("DPanel")
		playerPanel:SetHeight(He(64))
		playerPanel:DockMargin(3, 0, 0, 5)

		playerPanel.Paint = function(self, w, h)
			draw.RoundedBox(8, 0, 0, w, h, Color(75, 75, 75, 240))
		end

		if ply ~= LocalPlayer() then
			local muteButton = vgui.Create("DButton", playerPanel)
			muteButton:SetPos(We(440), He(20))
			muteButton:SetSize(We(24), He(24))
			muteButton:SetText("")

			muteButton.Paint = function(self, w, h)
				if IsValid(ply) then
					local muteIcon = ply:IsMuted() and "icon16/sound_mute.png" or "icon16/sound.png"
					surface.SetDrawColor(255, 255, 255, 255)
					surface.SetMaterial(Material(muteIcon))
					surface.DrawTexturedRect(0, 0, w, h)
				end
			end

			muteButton.DoClick = function()
				ply:SetMuted(not ply:IsMuted())
			end
		end

		local nameLabel = vgui.Create("DLabel", playerPanel)
		nameLabel:SetText(ply:Nick())
		nameLabel:SetPos(We(64), He(4))
		nameLabel:SetSize(We(400), He(40))
		nameLabel:SetFont("MuR_Font3")
		nameLabel:SetTextColor(Color(255, 255, 255))
		local nameLabel = vgui.Create("DLabel", playerPanel)
		nameLabel:SetText(MuR.Language["guilt:"] .. ply:GetNWFloat('Guilt') .. "%")
		nameLabel:SetPos(We(64), He(24))
		nameLabel:SetSize(We(400), He(40))
		nameLabel:SetFont("MuR_Font1")
		nameLabel:SetTextColor(Color(255, 255, 255))
		local avatarImage = vgui.Create("AvatarImage", playerPanel)
		avatarImage:SetPos(We(4), He(4))
		avatarImage:SetSize(We(56), He(56))
		avatarImage:SetPlayer(ply, 64)
		local b = vgui.Create("DButton", avatarImage)
		b:SetPos(0, 0)
		b:SetSize(We(56), He(56))
		b:SetText("")
		b.id = ply:SteamID64() or ""

		b.DoClick = function(self)
			gui.OpenURL("https://steamcommunity.com/profiles/" .. self.id)
		end

		b.Paint = function() end
		playerList:Add(playerPanel)
	end
end

hook.Add("ScoreboardShow", "ShowScoreboard", function()
	CreateScoreboard()

	return true
end)

hook.Add("ScoreboardHide", "HideScoreboard", function()
	if IsValid(scoreboard) then
		scoreboard:AlphaTo(0, 0.2, 0, function()
			scoreboard:Remove()
		end)
	end
end)