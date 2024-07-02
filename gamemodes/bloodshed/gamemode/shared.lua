MuR = MuR or {}

MuR.shared("shared/sh_cvars.lua")
MuR.shared("shared/sh_rd.lua")
MuR.shared("shared/sh_woundfix.lua")
MuR.shared("zippy_gore/zippygoremod3.lua")
MuR.shared("zippy_blood/zippy_dynamic_blood_splatter.lua")

MuR.server("lang/sv_init.lua")
MuR.server("server/sv_functions.lua")
MuR.server("server/sv_rounds.lua")
MuR.server("server/sv_rd.lua")
MuR.server("server/sv_npc.lua")
MuR.server("server/sv_nodegraph.lua")
MuR.server("server/sv_commands.lua")
MuR.server("server/sv_util.lua")
MuR.server("server/sv_takedown.lua")
MuR.server("server/sv_shop.lua")
MuR.server("server/sv_damage.lua")
MuR.server("server/sv_deathlist.lua")
MuR.server("server/sv_deathragdoll.lua")

MuR.client("lang/cl_init.lua")
MuR.client("client/cl_hud.lua")
MuR.client("client/cl_rd.lua")
MuR.client("client/cl_chat.lua")
MuR.client("client/cl_util.lua")
MuR.client("client/cl_scoreboard.lua")
MuR.client("client/cl_body.lua")
MuR.client("client/cl_q_menu.lua")
MuR.client("client/cl_shop.lua")
MuR.client("client/cl_pain.lua")
MuR.client("client/cl_deathlist.lua")

MuR.Language = MuR.Language or {}

MuR.PlayerModels = {
	["Civilian_Male"] = {"models/player/Group01/male_01.mdl", "models/player/Group01/male_02.mdl", "models/player/Group01/male_03.mdl", "models/player/Group01/male_04.mdl", "models/player/Group01/male_05.mdl", "models/player/Group01/male_06.mdl", "models/player/Group01/male_07.mdl", "models/player/Group01/male_08.mdl", "models/player/Group01/male_09.mdl", "models/player/Group03/male_01.mdl", "models/player/Group03/male_02.mdl", "models/player/Group03/male_03.mdl", "models/player/Group03/male_04.mdl", "models/player/Group03/male_05.mdl", "models/player/Group03/male_06.mdl", "models/player/Group03/male_07.mdl", "models/player/Group03/male_08.mdl", "models/player/Group03/male_09.mdl"},
	["Civilian_Female"] = {"models/player/Group01/female_01.mdl", "models/player/Group01/female_02.mdl", "models/player/Group01/female_03.mdl", "models/player/Group01/female_04.mdl", "models/player/Group01/female_05.mdl", "models/player/Group01/female_06.mdl", "models/player/Group03/female_01.mdl", "models/player/Group03/female_02.mdl", "models/player/Group03/female_03.mdl", "models/player/Group03/female_04.mdl", "models/player/Group03/female_05.mdl", "models/player/Group03/female_06.mdl"},
	["Medic_Male"] = {"models/murdered/pm/medic_01.mdl", "models/murdered/pm/medic_02.mdl", "models/murdered/pm/medic_03.mdl", "models/murdered/pm/medic_04.mdl", "models/murdered/pm/medic_05.mdl", "models/murdered/pm/medic_06.mdl", "models/murdered/pm/medic_07.mdl"},
	["Medic_Female"] = {"models/murdered/pm/medic_01_f.mdl", "models/murdered/pm/medic_02_f.mdl", "models/murdered/pm/medic_03_f.mdl", "models/murdered/pm/medic_04_f.mdl", "models/murdered/pm/medic_05_f.mdl", "models/murdered/pm/medic_06_f.mdl"},
	["Builder"] = {"models/murdered/pm/odessa.mdl",},
	["Maniac"] = {"models/murdered/pm/jason_v.mdl",},
	["Terrorist"] = {"models/player/phoenix.mdl",},
	["Shooter"] = {"models/player/leet.mdl",},
	["Anarchist"] = {"models/player/arctic.mdl",},
	["Police"] = {"models/murdered/pm/british_cop_pm.mdl"},
	["SWAT"] = {"models/murdered/pm/swat_ls.mdl"},
	["Riot"] = {"models/player/riot.mdl",},
	["Terrorist_TDM"] = {"models/player/phoenix.mdl", "models/player/leet.mdl", "models/player/arctic.mdl", "models/player/guerilla.mdl"},
	["Police_TDM"] = {"models/player/gasmask.mdl", "models/player/urban.mdl", "models/player/swat.mdl", "models/player/riot.mdl"},
	["War_RUS"] = {"models/leygun/rfarmy/soilder_rf_02.mdl", "models/leygun/rfarmy/soilder_rf_04.mdl", "models/leygun/rfarmy/soilder_rf_05.mdl", "models/leygun/rfarmy/soilder_rf_07.mdl", "models/leygun/rfarmy/soilder_rf_08.mdl", "models/leygun/rfarmy/soilder_rf_09.mdl"},
	["War_UKR"] = {"models/leygun/ua_army/soilder_ua_02.mdl", "models/leygun/ua_army/soilder_ua_04.mdl", "models/leygun/ua_army/soilder_ua_05.mdl", "models/leygun/ua_army/soilder_ua_06.mdl", "models/leygun/ua_army/soilder_ua_07.mdl", "models/leygun/ua_army/soilder_ua_08.mdl", "models/leygun/ua_army/soilder_ua_09.mdl"}
}

local ftab = {"mur_food_apple", "mur_food_banana", "mur_food_beer1", "mur_food_beer2", "mur_food_burger", "mur_food_chickenwrap", "mur_food_colabig", "mur_food_colasmall", "mur_food_doritos", "mur_food_hotdog", "mur_food_icecream", "mur_food_lays", "mur_food_monster", "mur_food_mtndewcan", "mur_food_pepsican", "mur_food_redbull", "mur_food_sandwich"}

MuR.GamemodeChances = {
	[1] = {chance = 100, need_players = 0},
	[2] = {chance = 40, need_players = 0},
	[3] = {chance = 40, need_players = 0},
	[4] = {chance = 100, need_players = 0},
	[5] = {chance = 20, need_players = 0},
	[6] = {chance = 5, need_players = 3},
	[7] = {chance = 40, need_players = 0},
	[8] = {chance = 40, need_players = 3},
	[9] = {chance = 30, need_players = 0},
	[10] = {chance = 30, need_players = 3},
	[11] = {chance = 20, need_players = 0},
	[12] = {chance = 20, need_players = 0},
}

MuR.Shop = {
	["Civilian"] = {
		{
			name = "Food",
			icon = "entities/food.png",
			price = 5,
			func = function(ply)
				ply:GiveWeapon(table.Random(ftab))
			end,
		},
		{
			name = "Flashlight",
			icon = "entities/flashlight.png",
			price = 10,
			func = function(ply)
				ply:AllowFlashlight(true)
			end,
		},
		{
			name = "Bandage",
			icon = "entities/bandage.png",
			price = 25,
			func = function(ply)
				ply:GiveWeapon("mur_loot_bandage")
			end,
		},
		{
			name = "Adrenaline",
			icon = "entities/syringe.png",
			price = 50,
			func = function(ply)
				ply:GiveWeapon("mur_loot_adrenaline")
			end,
		},
		{
			name = "Duct Tape",
			icon = "entities/skotch.png",
			price = 50,
			func = function(ply)
				ply:GiveWeapon("mur_loot_ducttape")
			end,
		},
		{
			name = "First Aid Kit",
			icon = "entities/medkit.png",
			price = 75,
			func = function(ply)
				ply:GiveWeapon("mur_loot_medkit")
			end,
		},
		{
			name = "Hammer",
			icon = "entities/hammer.png",
			price = 100,
			func = function(ply)
				ply:GiveWeapon("mur_loot_hammer")
			end,
		},
		{
			name = "Compact Knife",
			icon = "entities/yurie_eft_bars_a-2607_95x18.png",
			price = 125,
			func = function(ply)
				ply:GiveWeapon("mur_compact_knife")
			end,
		},
		{
			name = "Phone",
			icon = "entities/phone.png",
			price = 150,
			func = function(ply)
				ply:GiveWeapon("mur_loot_phone")
			end,
		},
		{
			name = "Pneumatic P99",
			icon = "entities/tfa_ins2_walther_p99_1.png",
			price = 200,
			func = function(ply)
				ply:GiveWeapon("mur_p99_hol")
			end,
		},
		{
			name = "Pepper Spray",
			icon = "murdered/blood.png",
			price = 250,
			func = function(ply)
				ply:GiveWeapon("mur_pepperspray")
			end,
		},
	},
	["Killer"] = {
		{
			name = "Pneumatic P99",
			icon = "entities/tfa_ins2_walther_p99_1.png",
			price = 10,
			func = function(ply)
				ply:GiveWeapon("mur_p99_hol")
			end,
		},
		{
			name = "Ammo",
			icon = "entities/ghost_l115a3_extented_magazine.png",
			price = 25,
			func = function(ply)
				local wep = ply:GetActiveWeapon()

				if IsValid(wep) and wep:GetMaxClip1() > 0 then
					ply:GiveAmmo(wep:GetMaxClip1(), wep:GetPrimaryAmmoType(), true)
				end
			end,
		},
		{
			name = "Cyanide Syringe",
			icon = "entities/syringe.png",
			price = 50,
			func = function(ply)
				ply:GiveWeapon("mur_cyanide")
			end,
		},
		{
			name = "Poison Canister",
			icon = "entities/poison.png",
			price = 50,
			func = function(ply)
				ply:GiveWeapon("mur_poisoncanister")
			end,
		},
		{
			name = "Heroin",
			icon = "entities/syringe.png",
			price = 100,
			func = function(ply)
				ply:GiveWeapon("mur_loot_heroin")
			end,
		},
		{
			name = "F1 Grenade",
			icon = "entities/f1.png",
			price = 150,
			func = function(ply)
				ply:GiveWeapon("mur_f1")
			end,
		},
		{
			name = "M67 Grenade",
			icon = "entities/m67.png",
			price = 150,
			func = function(ply)
				ply:GiveWeapon("mur_m67")
			end,
		},
		{
			name = "Light Weapon",
			icon = "entities/tfa_ins2_pm_alt.png",
			price = 200,
			func = function(ply)
				ply:GiveWeapon(table.Random(MuR.WeaponTable["Secondary"]).class)
			end,
		},
		{
			name = "IED",
			icon = "entities/ied.png",
			price = 250,
			func = function(ply)
				ply:GiveWeapon("mur_ied")
			end,
		},
		{
			name = "Heavy Weapon",
			icon = "entities/mosin.png",
			price = 500,
			func = function(ply)
				ply:GiveWeapon(table.Random(MuR.WeaponTable["Primary"]).class)
			end,
		}
	},
	["Soldier"] = {
		{
			name = "Ammo",
			icon = "entities/ghost_l115a3_extented_magazine.png",
			price = 25,
			func = function(ply)
				local wep = ply:GetActiveWeapon()

				if IsValid(wep) and wep:GetMaxClip1() > 0 then
					ply:GiveAmmo(wep:GetMaxClip1(), wep:GetPrimaryAmmoType(), true)
				end
			end,
		},
		{
			name = "F1 Grenade",
			icon = "entities/f1.png",
			price = 50,
			func = function(ply)
				ply:GiveWeapon("mur_f1")
			end,
		},
		{
			name = "M67 Grenade",
			icon = "entities/m67.png",
			price = 50,
			func = function(ply)
				ply:GiveWeapon("mur_m67")
			end,
		},
		{
			name = "MR96",
			icon = "entities/sw500.png",
			price = 50,
			func = function(ply)
				ply:GiveWeapon("mur_mr96")
			end,
		},
		{
			name = "IED",
			icon = "entities/ied.png",
			price = 75,
			func = function(ply)
				ply:GiveWeapon("mur_ied")
			end,
		},
		{
			name = "M870",
			icon = "entities/tfa_ins2_izh43sw_2.png",
			price = 100,
			func = function(ply)
				ply:GiveWeapon("mur_m870")
			end,
		},
		{
			name = "Mosin Nagant",
			icon = "entities/mosin.png",
			price = 275,
			func = function(ply)
				ply:GiveWeapon("mur_mosin")
			end,
		},
		{
			name = "MP7",
			icon = "entities/mp7.png",
			price = 325,
			func = function(ply)
				ply:GiveWeapon("mur_mp7")
			end,
		},
		{
			name = "SPAS-12",
			icon = "entities/spas12.png",
			price = 375,
			func = function(ply)
				ply:GiveWeapon("mur_spas12")
			end,
		},
		{
			name = "SKS",
			icon = "entities/sks.png",
			price = 400,
			func = function(ply)
				ply:GiveWeapon("mur_sks")
			end,
		},
		--[[{
			name = "AS50",
			icon = "entities/sr25.png",
			price = 500,
			func = function(ply)
				ply:GiveWeapon("tacrp_as50")
			end,
		},--]] // у sr25 баг с руками, потом найду замену
		--[[{
			name = "RPG-7",
			icon = "entities/rpg7.png",
			price = 1000,
			func = function(ply)
				ply:GiveWeapon("tacrp_rpg7")
			end,
		}--]] // либо удалю, либо найду замену
	}
}

MuR.PoliceClasses = {
	["patrol"] = {
		npcs = {"mur_npc_police"},
		weps = {"mur_npc_glock"},
	},
	["swat"] = {
		npcs = {"mur_npc_swat"},
		weps = {"mur_npc_m4a1"},
	},
	["security"] = {
		npcs = {"mur_npc_police"},
		weps = {"mur_npc_glock"},
		underroof = false,
	},
	["zombie"] = {"zb_zombie"},
	max_npcs = 16,
	delay_spawn = 2,
	security_spawn = 0,
	no_npc_police = false,
	no_player_police = false,
}

MuR.Crates = {"models/props_junk/cardboard_box001a.mdl", "models/props_junk/cardboard_box001b.mdl", "models/props_junk/cardboard_box002a.mdl", "models/props_junk/cardboard_box002b.mdl", "models/props_junk/cardboard_box003a.mdl", "models/props_junk/cardboard_box003b.mdl", "models/props_junk/wood_crate001a.mdl", "models/props_junk/wood_crate001a_damaged.mdl", "models/props_junk/wood_crate001a_damagedmax.mdl", "models/props_junk/wood_crate002a.mdl", "models/props_c17/furnituredrawer001a.mdl", "models/props_c17/furnituredrawer003a.mdl", "models/props_c17/furnituredresser001a.mdl", "models/props_c17/woodbarrel001.mdl", "models/props_lab/dogobject_wood_crate001a_damagedmax.mdl", "models/items/item_item_crate.mdl", "models/props/de_inferno/claypot02.mdl", "models/props/de_inferno/claypot01.mdl", "models/props_c17/FurnitureCupboard001a.mdl"}

MuR.MaxLootNumber = 100

MuR.Loot = {
	---WEAPONS---
	{
		class = "mur_pepperspray",
		chance = 15
	},
	{
		class = "mur_compact_knife",
		chance = 15
	},
	{
		class = "mur_crowbar",
		chance = 15
	},
	{
		class = "mur_golf_club",
		chance = 15
	},
	{
		class = "mur_hatchet",
		chance = 15
	},
	{
		class = "mur_ice_pick",
		chance = 15
	},
	{
		class = "mur_survival_axe",
		chance = 15
	},
	{
		class = "mur_machete",
		chance = 15
	},
	{
		class = "mur_bat",
		chance = 10
	},
	{
		class = "mur_shovel",
		chance = 10
	},
	{
		class = "mur_fire_axe",
		chance = 10
	},
	{
		class = "mur_m45",
		chance = 5
	},
	{
		class = "mur_m9",
		chance = 5
	},
	{
		class = "mur_fnp45",
		chance = 4
	},
	{
		class = "mur_mr96",
		chance = 4
	},
	{
		class = "mur_sw500",
		chance = 4
	},
	{
		class = "mur_makarov",
		chance = 4
	},
	{
		class = "mur_mac10",
		chance = 2
	},
	---OTHERS---
	{
		class = "mur_loot_money",
		chance = 50
	},
	{
		class = "mur_loot_ammo",
		chance = 30
	},
	{
		class = "mur_loot_flashlight",
		chance = 25
	},
	{
		class = "mur_loot_bandage",
		chance = 25
	},
	{
		class = "mur_loot_ducttape",
		chance = 20
	},
	{
		class = "mur_loot_adrenaline",
		chance = 10
	},
	{
		class = "mur_loot_heroin",
		chance = 10
	},
	{
		class = "mur_loot_medkit",
		chance = 5
	},
	{
		class = "mur_loot_hammer",
		chance = 5
	},
	{
		class = "mur_loot_phone",
		chance = 5
	}
}

for k, v in ipairs(ftab) do
	table.insert(MuR.Loot, {
		class = v,
		chance = 50
	})
end

MuR.MaleNames =  {"Andrew", "Max", "James", "David", "Daniel", "Michael", "Matthew", "Robert", "John", "William", "Thomas", "Richard", "Mark", "Charles", "Christopher", "Paul", "Steven", "George", "Edward", "Peter", "Anthony", "Simon", "Adam", "Luke", "Benjamin", "Samuel", "Alexander", "Henry", "Joseph", "Ryan", "Liam", "Harry", "Jack", "Oliver", "Noah", "Leo", "Oscar", "Ethan", "Jacob", "Lucas", "Joshua", "Logan", "Mason", "Isaac", "Dylan", "Finley", "Archie", "Theo", "Alfie", "Charlie"}
MuR.FemaleNames = {"Emma", "Olivia", "Sophia", "Isabella", "Ava", "Emily", "Abigail", "Mia", "Chloe", "Ella", "Amelia", "Grace", "Lily", "Hannah", "Zoe", "Anna", "Charlotte", "Lucy", "Evelyn", "Ruby", "Eva", "Alice", "Molly", "Isla", "Lola", "Eleanor", "Harper", "Scarlett", "Layla", "Ellie", "Mila", "Ivy", "Isabelle", "Rosie", "Freya", "Poppy", "Daisy", "Evie", "Sofia", "Willow", "Phoebe", "Esme", "Sienna", "Maya", "Luna", "Holly", "Lily", "Imogen", "Erin", "Bella"}

MuR.WeaponToRagdoll = {
	["tacrp_vertec"] = "vertec", --models/weapons/tacint/w_vertec.mdl
	["tacrp_ex_m1911"] = "m1911", --models/weapons/tacint_extras/w_m1911.mdl
	["tacrp_ex_glock"] = "glock", --models/weapons/tacint_extras/w_glock_new.mdl
	["tacrp_ex_hk45c"] = "hk45c", --models/weapons/tacint_extras/w_hk45c.mdl
	["tacrp_p2000"] = "p2000", --models/weapons/tacint/w_p2000.mdl
	["tacrp_ex_usp"] = "usp", --models/weapons/tacint_extras/w_usp.mdl
	["tacrp_gsr1911"] = "gsr1911", --models/weapons/tacint/w_gsr1911.mdl
	["tacrp_p250"] = "p250", --models/weapons/tacint/w_p250.mdl
	["tacrp_uzi"] = "uzi", --models/weapons/tacint/w_uzi.mdl
	["tacrp_ex_mac10"] = "mac10", --models/weapons/tacint_extras/w_mac10.mdl
	["tacrp_skorpion"] = "skorpion", --models/weapons/tacint/w_skorpion.mdl
	["tacrp_sphinx"] = "sphinx", --models/weapons/tacint/w_sphinx.mdl
	["tacrp_xd45"] = "xd45", --models/weapons/tacint/w_xd45.mdl
	["tacrp_mr96"] = "mr96", --models/weapons/tacint/w_mr96.mdl
	["tacrp_ex_mp9"] = "mp9", --models/weapons/tacint_extras/w_mp9.mdl
	["tacrp_p90"] = "p90", --models/weapons/tacint/w_p90.mdl
	["tacrp_mp5"] = "mp5", --models/weapons/tacint/w_mp5.mdl
	["tacrp_mp7"] = "mp7", --models/weapons/tacint/w_mp7.mdl
	["tacrp_ex_ump45"] = "ump45", --models/weapons/tacint_extras/w_ump45.mdl
	["tacrp_pdw"] = "pdw", --models/weapons/tacint/w_pdw.mdl
	["tacrp_superv"] = "superv", --models/weapons/tacint/w_superv.mdl
	["tacrp_ex_ak47"] = "ak74", --models/weapons/tacint_extras/w_ak47.mdl
	["tacrp_amd65"] = "amd65", --models/weapons/tacint/w_amd65.mdl
	["tacrp_ex_m4a1"] = "m4a1", --models/weapons/tacint_extras/w_m4a1.mdl
	["tacrp_k1a"] = "k1a", --models/weapons/tacint/w_k1a.mdl
	["tacrp_m4"] = "m4", --models/weapons/tacint/w_m4.mdl
	["tacrp_ak47"] = "ak47", --models/weapons/tacint/w_ak47.mdl
	["tacrp_g36k"] = "g36", --models/weapons/tacint/w_g36k.mdl
	["tacrp_sg551"] = "sg551", --models/weapons/tacint/w_sg551.mdl
	["tacrp_aug"] = "aug", --models/weapons/tacint/w_aug.mdl
	["tacrp_mg4"] = "mg4", --models/weapons/tacint/w_mg4.mdl
	["tacrp_m4star10"] = "m4star10", --models/weapons/tacint/w_m4star10.mdl
	["tacrp_fp6"] = "fp6", --models/weapons/tacint/w_fp6.mdl
	["tacrp_ks23"] = "ks23", --models/weapons/tacint/w_ks23.mdl
	["tacrp_bekas"] = "bekas", --models/weapons/tacint/w_bekas.mdl
	["tacrp_tgs12"] = "tgs12", --models/weapons/tacint/w_tgs12.mdl
	["tacrp_civ_p90"] = "p90c", --models/weapons/tacint/w_p90.mdl
	["tacrp_civ_mp5"] = "mp5c", --models/weapons/tacint/w_mp5.mdl
	["tacrp_m1"] = "m1", --models/weapons/tacint/w_m1.mdl
	["tacrp_dsa58"] = "dsa58", --models/weapons/tacint/w_dsa58.mdl
	["tacrp_hk417"] = "hk417", --models/weapons/tacint/w_hk417.mdl
	["tacrp_m14"] = "m14", --models/weapons/tacint/w_m14.mdl
	["tacrp_uratio"] = "uratio", --models/weapons/tacint/w_uratio.mdl
	["tacrp_spr"] = "spr", --models/weapons/tacint/w_spr.mdl
	["tacrp_as50"] = "as50", --models/weapons/tacint/w_as50.mdl
	["tacrp_ex_hecate"] = "hecate", --models/weapons/tacint_extras/w_hecate.mdl
}

-------------------------------------------------------------------------

game.AddDecal("mur_ducttape", "decals/mur_ducttape")

-------------------------------------------------------------------------

hook.Add("GetGameDescription","MuR.GetGameDescription",function()
	return "BloodShed"
end)

