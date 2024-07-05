MuR.CurrentLanguage = "en"
MuR.Languages = {}

local langFiles = file.Find("bloodshed/gamemode/lang/*.lua", "LUA")

for k, v in ipairs(langFiles) do
	local exp = string.Explode(".", v)[1]
	MuR.Languages[exp] = true
end

function MuR.SetLanguage(lang)
	MuR.CurrentLanguage = lang
end

function MuR.LoadLanguage(lang)
	if not MuR.Languages[lang] then lang = "en" end

	MuR.Language = include(lang .. ".lua")

	MuR.SetLanguage(lang)
end

function MuR.SelectGameLanguage()
	local cnv = GetConVar("gmod_language")

	MuR.LoadLanguage(cnv:GetString())
end

local function PrintGameModes()
 local i = 1
	while (!false) do // военное преступление 
		local nameKey = "gamename" .. i
		local descKey = "gamedesc" .. i
		if LANG[nameKey] and LANG[descKey] then
			print(i .. ". " .. LANG[nameKey])
   i = i + 1
  else
   break
		end
	end
end

concommand.Add("mur_gamemodelist2", PrintGameModes)

MuR.SelectGameLanguage()

hook.Add("LanguageChanged", "MuR.ChangedLanguage", function(lang)
	MuR.LoadLanguage(lang)
end)