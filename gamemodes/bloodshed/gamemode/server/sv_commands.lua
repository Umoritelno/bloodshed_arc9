hook.Add("InitPostEntity", "MuR.Run", function()
	RunConsoleCommand("zbase_ply_hurt_ally", 1)
	RunConsoleCommand("sv_alltalk", 1)
	//RunConsoleCommand("tacrp_free_atts", 0)
	//RunConsoleCommand("", 0)
	//RunConsoleCommand("tacrp_visibleholster", 0)
	RunConsoleCommand("arc9_mult_defaultammo", 0)
end)

net.Receive("MuR.VoiceLines", function(len, ply)
	if !ply:Alive() then return end
	local num = net.ReadFloat()
	local str = ""
	if num == 1 then
		str = "question"
	elseif num == 2 then
		str = "answer"
	elseif num == 3 then
		str = "help"
	elseif num == 4 then
		str = "hell"
	elseif num == 5 then
		str = "panic"
	elseif num == 6 then
		str = "cops"
	elseif num == 7 then
		str = "trust"
	elseif num == 8 then
		str = "sorry"
	elseif num == 9 then
		str = "happy"
	elseif num == 10 then
		str = "back"
	elseif num == 11 then
		str = "oops"
	elseif num == 12 then
		str = "go"
	elseif num == 13 then
		str = "injured"
	elseif num == 14 then
		str = "hello"
	end
	ply:PlayVoiceLine(str)
end)

local meta = FindMetaTable("Player")
function meta:PlayVoiceLine(str, force)
	if force or isstring(self.LastVoiceLineType) and self.LastVoiceLineType == "death_fly" and str ~= "death_fly" then
		self.VoiceDelay = 0
	end

	if self.VoiceDelay > CurTime() or str == "" or self:GetNWString("Class") == "Zombie" then return end
	if isstring(self.LastVoiceLine) then
		if IsValid(self:GetRD()) then
			self:GetRD():StopSound(self.LastVoiceLine)
		end
		self:StopSound(self.LastVoiceLine)
	end

	local snd = ""
	local dur = 0
	local decibel = 70
	if str == "shotfired" then
		snd = ")murdered/player/police/shotfired (" .. math.random(1,4) .. ").mp3"
		decibel = 80
	elseif str == "surrender" then
		snd = ")murdered/player/police/surrender (" .. math.random(1,31) .. ").mp3"
		decibel = 80
	elseif str == "death_default" then
		if self.Male then
			snd = ")murdered/player/deathmale/bullet/death_bullet" .. math.random(1,104) .. ".ogg"
		else
			snd = ")murdered/player/deathfemale/bullet/death_bullet" .. math.random(1,50) .. ".ogg"
		end
		decibel = 60
	elseif str == "death_blunt" then
		if self.Male then
			snd = ")murdered/player/deathmale/blunt/death_blunt"..math.random(1,38)..".ogg"
		else
			snd = ")murdered/player/deathfemale/blunt/death_blunt"..math.random(1,13)..".ogg"
		end
		decibel = 60
	elseif str == "death_fly" then
		if self.Male then
			snd = ")murdered/player/deathmale/flying/death_fly"..math.random(1,6)..".ogg"
		else
			snd = ")murdered/player/deathfemale/flying/death_fly"..math.random(1,4)..".ogg"
		end
		dur = dur + 4
		decibel = 75
	elseif str == "question" then
		if self.Male then
			local rnd = math.random(1,31)
			if rnd < 10 then
				rnd = "0"..rnd
			end
			snd = "vo/npc/male01/question"..rnd..".wav"
		else
			local rnd = math.random(1,31)
			if rnd < 10 then
				rnd = "0"..rnd
			end
			snd = "vo/npc/female01/question"..rnd..".wav"
		end
	elseif str == "answer" then
		if self.Male then
			local rnd = math.random(1,40)
			if rnd < 10 then
				rnd = "0"..rnd
			end
			snd = "vo/npc/male01/answer"..rnd..".wav"
		else
			local rnd = math.random(1,40)
			if rnd < 10 then
				rnd = "0"..rnd
			end
			snd = "vo/npc/female01/answer"..rnd..".wav"
		end
	elseif str == "help" then
		if self.Male then
			snd = "vo/npc/male01/help01.wav"
		else
			snd = "vo/npc/female01/help01.wav"
		end
	elseif str == "hell" then
		if self.Male then
			snd = "vo/npc/male01/gethellout.wav"
		else
			snd = "vo/npc/female01/gethellout.wav"
		end
	elseif str == "panic" then
		if self.Male then
			snd = "vo/npc/male01/runforyourlife0"..math.random(1,3)..".wav"
		else
			snd = "vo/npc/female01/runforyourlife0"..math.random(1,2)..".wav"
		end
	elseif str == "cops" then
		if self.Male then
			snd = "vo/npc/male01/civilprotection0"..math.random(1,2)..".wav"
		else
			snd = "vo/npc/female01/civilprotection0"..math.random(1,2)..".wav"
		end
	elseif str == "trust" then
		if self.Male then
			snd = "vo/npc/male01/wetrustedyou0"..math.random(1,2)..".wav"
		else
			snd = "vo/npc/female01/wetrustedyou0"..math.random(1,2)..".wav"
		end
	elseif str == "sorry" then
		if self.Male then
			snd = "vo/npc/male01/sorry0"..math.random(1,3)..".wav"
		else
			snd = "vo/npc/female01/sorry0"..math.random(1,3)..".wav"
		end
	elseif str == "happy" then
		local tabm = {"vo/npc/male01/yeah02.wav", "vo/npc/male01/nice.wav", "vo/npc/male01/finally.wav", "vo/npc/male01/fantastic01.wav", "vo/npc/male01/fantastic02.wav"}
		local tabf = {"vo/npc/female01/yeah02.wav", "vo/npc/female01/nice.wav", "vo/npc/female01/finally.wav", "vo/npc/female01/fantastic01.wav", "vo/npc/female01/fantastic02.wav"}
		if self.Male then
			snd = table.Random(tabm)
		else
			snd = table.Random(tabf)
		end
	elseif str == "back" then
		local tabm = {"vo/npc/male01/watchout.wav", "vo/npc/male01/behindyou01.wav", "vo/npc/male01/behindyou02.wav"}
		local tabf = {"vo/npc/female01/watchout.wav", "vo/npc/female01/behindyou01.wav", "vo/npc/female01/behindyou02.wav"}
		if self.Male then
			snd = table.Random(tabm)
		else
			snd = table.Random(tabf)
		end
	elseif str == "oops" then
		local tabm = {"vo/npc/male01/uhoh.wav", "vo/npc/male01/whoops01.wav"}
		local tabf = {"vo/npc/female01/uhoh.wav", "vo/npc/female01/whoops01.wav"}
		if self.Male then
			snd = table.Random(tabm)
		else
			snd = table.Random(tabf)
		end
	elseif str == "go" then
		if self.Male then
			snd = "vo/npc/male01/letsgo0"..math.random(1,2)..".wav"
		else
			snd = "vo/npc/female01/letsgo0"..math.random(1,2)..".wav"
		end
	elseif str == "injured" then
		local tabm = {"vo/npc/male01/imhurt01.wav", "vo/npc/male01/imhurt02.wav", "vo/npc/male01/mygut02.wav", "vo/npc/male01/myleg01.wav", "vo/npc/male01/myleg02.wav", "vo/npc/male01/myarm01.wav", "vo/npc/male01/myarm02.wav"}
		local tabf = {"vo/npc/female01/imhurt01.wav", "vo/npc/female01/imhurt02.wav", "vo/npc/female01/mygut02.wav", "vo/npc/female01/myleg01.wav", "vo/npc/female01/myleg02.wav", "vo/npc/female01/myarm01.wav", "vo/npc/female01/myarm02.wav"}
		if self.Male then
			snd = table.Random(tabm)
		else
			snd = table.Random(tabf)
		end
	elseif str == "hello" then
		if self.Male then
			snd = "vo/npc/male01/hi0"..math.random(1,2)..".wav"
		else
			snd = "vo/npc/female01/hi0"..math.random(1,2)..".wav"
		end
	end

	dur = dur+SoundDuration(snd)
	if dur < 1 then
		dur = 1
	end
	self.VoiceDelay = CurTime()+dur
	self.LastVoiceLineType = str
	self.LastVoiceLine = snd
	if IsValid(self:GetRD()) then
		self:GetRD():EmitSound(snd, decibel, math.random(90, 110))
	else
		self:EmitSound(snd, decibel, math.random(90, 110))
	end
end

concommand.Add("mur_yell", function(ply)
	if not ply:Alive() then return end

	if ply.VoiceDelay < CurTime() then
		if ply:IsRolePolice() then
			ply:PlayVoiceLine("surrender")
			ply.VoiceDelay = CurTime() + 2
		else
			ply:ConCommand("mur_voicepanel")
		end
	end
end)

concommand.Add("mur_ragdoll", function(ply)
	if ply:Alive() then
		ply:StartRagdolling()
	end
end)

concommand.Add("mur_wep_drop", function(ply)
	local wep = ply:GetActiveWeapon()
	if not ply:Alive() or not IsValid(wep) or wep.CantDrop then return end
	ply:SelectWeapon("mur_hands")
	ply:DropWeapon(wep)
end)

concommand.Add("mur_wep_unload", function(ply)
	local wep = ply:GetActiveWeapon()
	if not ply:Alive() or not IsValid(wep) or wep:GetMaxClip1() < 1 then return end

	if wep:Clip1() > 0 then
		ply:EmitSound("items/ammo_pickup.wav", 60)
		ply:GiveAmmo(wep:Clip1(), wep:GetPrimaryAmmoType(), true)
		wep:SetClip1(0)
	end
end)

concommand.Add("mur_surrender", function(ply)
	if not ply:Alive() then return end
	ply:Surrender()
end)

----------ADMINS COMMANDS----------
concommand.Add("mur_give", function(ply, cmd, args)
	if ply:IsSuperAdmin() and args[1] then
		ply:GiveWeapon(args[1])
	end
end)

concommand.Add("mur_restartround", function(ply)
	if ply:IsSuperAdmin() then
		if MuR.GameStarted and MuR.TimeCount < CurTime() - 12 then
			MuR:ChangeStateOfGame(false)
		end
	end
end)

concommand.Add("mur_resetguilt", function(ply, cmd, args)
	if ply:IsSuperAdmin() then
		ply:SetNWFloat("Guilt", 0)
	end
end)

concommand.Add("mur_nextgamemode", function(ply, cmd, args)
	if ply:IsSuperAdmin() and args[1] then
		local num = tonumber(args[1])

		if num >= 0 and num <= 12 then
			MuR.NextGamemode = num
		end
	end
end)

concommand.Add("mur_nexttraitor", function(ply, cmd, args)
	if ply:IsSuperAdmin() and args[1] then
		for _, ply in ipairs(player.GetAll()) do
			if args[1] and string.match(ply:Name(), args[1]) then
				MuR.NextTraitor = ply
			end
			if args[2] and string.match(ply:Name(), args[2]) then
				MuR.NextTraitor2 = ply
			end
		end
	end
end)

concommand.Add("mur_forcespawn", function(ply, cmd, args)
	if ply:IsSuperAdmin() then
		local plys = nil

		for k, ply2 in pairs(player.GetAll()) do
			if string.match(ply2:Nick(), args[1]) then
				plys = ply2
				break
			end
		end

		plys.ForceSpawn = true

		if args[2] then
			plys:SetNWString("Class", args[2])
		end

		plys:StopRagdolling()
		plys:Spawn()
	end
end)

concommand.Add("mur_resetguilt_ply", function(ply, cmd, args)
	if ply:IsSuperAdmin() then
		local plys = nil

		for k, ply2 in pairs(player.GetAll()) do
			if string.match(ply2:Nick(), args[1]) then
				plys = ply2
				break
			end
		end

		plys:SetNWFloat("Guilt", 0)
	end
end)

-- Фан команда
concommand.Add("mur_explode", function(ply, cmd, args)
	if ply:IsSuperAdmin() then
		local plys = nil

		for k, ply2 in pairs(player.GetAll()) do
			if string.match(ply2:Nick(), args[1]) then
				plys = ply2
				break
			end
		end

		util.BlastDamage(game.GetWorld(), game.GetWorld(), plys:GetPos(), 10, 9999)
	end
end)

-- Фан команда
concommand.Add("mur_grenadethrow", function(ply, cmd, args)
	if ply:IsSuperAdmin() then
		local gr = ents.Create("murwep_grenade")
		gr:SetPos(ply:EyePos()+ply:GetForward()*32)
		gr:Spawn()
		local phys = gr:GetPhysicsObject()
		if IsValid(phys) then
			phys:SetVelocity(ply:GetAimVector()*512)
		end
	end
end)

-- Фан команда
concommand.Add("mur_bomj", function(ply, cmd, args)
	if ply:IsSuperAdmin() then
		ply:AddMoney(999999999)
	end
end)