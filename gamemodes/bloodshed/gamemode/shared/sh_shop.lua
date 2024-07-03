function GetItemInfo(cat,id)
    if !MuR.Shop[cat] then return end
    return MuR.Shop[cat][id]
end