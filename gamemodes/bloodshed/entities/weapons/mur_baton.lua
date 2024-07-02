AddCSLuaFile()
SWEP.PrintName = "Baton"
SWEP.Slot = 0
SWEP.DrawWeaponInfoBox = false
SWEP.TakedownType = "club"
SWEP.RagdollType = "Baton"
SWEP.ViewModelFOV = 90
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/murdered/weapons/tfa_l4d_mw2019/melee/c_baton.mdl"
SWEP.WorldModel = "models/murdered/weapons/tfa_l4d_mw2019/melee/w_baton.mdl"
SWEP.BobScale = 2.5
SWEP.SwayScale = 1.8
SWEP.UseHands = true
SWEP.Melee = true
SWEP.MeleeHealth = 80
SWEP.Primary.Ammo = "no"
SWEP.Primary.Delay = 0.8
SWEP.Primary.Throw = 9
SWEP.Primary.Damage = 15
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Delay = 1.2
SWEP.Secondary.Throw = -15
SWEP.Secondary.Damage = 20
SWEP.WorldModelPosition = Vector(3, -1.5, -8)
SWEP.WorldModelAngle = Angle(190, -110, 0)
SWEP.HoldType = "melee"
SWEP.RunHoldType = "passive"
SWEP.HitDistance = 66

function SWEP:Initialize()
	if CLIENT then
		self.RunScale = 0
	end
end

function SWEP:Deploy(wep)
	self:SendWeaponAnim(ACT_VM_DRAW)
	self:EmitSound("murdered/weapons/tfa_l4d_mw2019/tonfa/tonfa_deploy_1.wav")
end

function SWEP:IsRunning()
	return self:GetNWBool('Running')
end

function SWEP:PrimaryAttack()
	local angle = Angle(-self.Primary.Throw, 7, 0)
	local ply = self:GetOwner()

	if CLIENT and IsFirstTimePredicted() then
		local angle = Angle(-self.Primary.Throw, 0, 0)
		self:GetOwner():ViewPunchClient(angle)
	end

	ply:SetAnimation(PLAYER_ATTACK1)
	ply:EmitSound("murdered/weapons/tfa_l4d_mw2019/tonfa/tonfa_swing_miss" .. math.random(1, 2) .. ".wav")

	if math.random(1, 2) == 1 then
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_1)
	else
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_2)
	end

	if SERVER then
		timer.Simple(0.15, function()
			if not IsValid(ply) or not IsValid(self) then return end

			local tr = util.TraceLine({
				start = ply:GetShootPos(),
				endpos = ply:GetShootPos() + ply:GetAimVector() * self.HitDistance,
				filter = ply,
				mask = MASK_SHOT_HULL
			})

			if not IsValid(tr.Entity) then
				tr = util.TraceHull({
					start = ply:GetShootPos(),
					endpos = ply:GetShootPos() + ply:GetAimVector() * self.HitDistance,
					filter = ply,
					mins = Vector(-4, -4, -4),
					maxs = Vector(4, 4, 4),
					mask = MASK_SHOT_HULL
				})
			end

			local ent = tr.Entity

			if IsValid(ent) and (ent:IsPlayer() or ent:IsNPC() or ent:GetClass() == "prop_ragdoll") then
				local ef = EffectData()
				ef:SetOrigin(tr.HitPos)
				ef:SetColor(0)
				util.Effect("BloodImpact", ef)
				local dm = DamageInfo()
				dm:SetDamage(self.Primary.Damage)
				dm:SetDamagePosition(tr.HitPos)
				dm:SetDamageType(DMG_CLUB)
				dm:SetAttacker(ply)
				dm:SetInflictor(self)
				ent:TakeDamageInfo(dm)
				ply:EmitSound("murdered/weapons/tfa_l4d_mw2019/tonfa/melee_tonfa_0" .. math.random(1, 2) .. ".wav")
			elseif tr.Hit then
				if IsValid(ent) then
					local dm = DamageInfo()
					dm:SetDamage(self.Primary.Damage)
					dm:SetDamagePosition(tr.HitPos)
					dm:SetDamageType(DMG_CLUB)
					dm:SetAttacker(ply)
					dm:SetInflictor(self)
					ent:TakeDamageInfo(dm)
				end

				ply:EmitSound("murdered/weapons/tfa_l4d_mw2019/tonfa/tonfa_impact_world" .. math.random(1, 2) .. ".wav")
			end
		end)
	end

	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
end

function SWEP:SecondaryAttack()
	local angle2 = Angle(-self.Secondary.Throw, 0, 0)
	local ply = self:GetOwner()
	if CLIENT and IsFirstTimePredicted() then
		ply:ViewPunchClient(angle2)
	end
	ply:DoAnimationEvent(ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND)
	ply:EmitSound("murdered/weapons/tfa_l4d_mw2019/tonfa/tonfa_swing_miss" .. math.random(1, 2) .. ".wav")
	self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)

	if SERVER then
		timer.Simple(0.1, function()
			if not IsValid(ply) or not IsValid(self) then return end

			local tr = util.TraceLine({
				start = ply:GetShootPos(),
				endpos = ply:GetShootPos() + ply:GetAimVector() * self.HitDistance,
				filter = ply,
				mask = MASK_SHOT_HULL
			})

			if not IsValid(tr.Entity) then
				tr = util.TraceHull({
					start = ply:GetShootPos(),
					endpos = ply:GetShootPos() + ply:GetAimVector() * self.HitDistance,
					filter = ply,
					mins = Vector(-4, -4, -4),
					maxs = Vector(4, 4, 4),
					mask = MASK_SHOT_HULL
				})
			end

			local ent = tr.Entity

			if IsValid(ent) and (ent:IsPlayer() or ent:IsNPC() or ent:GetClass() == "prop_ragdoll") then
				local ef = EffectData()
				ef:SetOrigin(tr.HitPos)
				ef:SetColor(0)
				util.Effect("BloodImpact", ef)
				local dm = DamageInfo()
				dm:SetDamage(self.Secondary.Damage)
				dm:SetDamagePosition(tr.HitPos)
				dm:SetDamageType(DMG_CLUB)
				dm:SetAttacker(ply)
				dm:SetInflictor(self)
				ent:TakeDamageInfo(dm)
				ply:EmitSound("murdered/weapons/tfa_l4d_mw2019/tonfa/melee_tonfa_0" .. math.random(1, 2) .. ".wav")
			elseif tr.Hit then
				if IsValid(ent) then
					local dm = DamageInfo()
					dm:SetDamage(self.Secondary.Damage)
					dm:SetDamagePosition(tr.HitPos)
					dm:SetDamageType(DMG_CLUB)
					dm:SetAttacker(ply)
					dm:SetInflictor(self)
					ent:TakeDamageInfo(dm)
				end

				ply:EmitSound("murdered/weapons/tfa_l4d_mw2019/tonfa/tonfa_impact_world" .. math.random(1, 2) .. ".wav")
			end
		end)
	end

	self:SetNextPrimaryFire(CurTime() + self.Secondary.Delay)
	self:SetNextSecondaryFire(CurTime() + self.Secondary.Delay)
end

function SWEP:Think()
	local ow = self:GetOwner()

	if CLIENT then
		if self:IsRunning() then
			self.RunScale = math.min(self.RunScale + FrameTime() / 0.2, 1)
		else
			self.RunScale = math.max(self.RunScale - FrameTime() / 0.2, 0)
		end
	else
		self:SetNWBool('Running', ow:IsSprinting())

		if self:IsRunning() then
			self:SetHoldType(self.RunHoldType)
		else
			self:SetHoldType(self.HoldType)
		end
	end
end

function SWEP:Holster()
	return true
end

if CLIENT then
	local WorldModel = ClientsideModel(SWEP.WorldModel)
	WorldModel:SetNoDraw(true)

	function SWEP:DrawWorldModel()
		local Owner = self:GetOwner()

		if IsValid(Owner) then
			local offsetVec = self.WorldModelPosition
			local offsetAng = self.WorldModelAngle
			local boneid = Owner:LookupBone("ValveBiped.Bip01_R_Hand")
			if not boneid then return end
			local matrix = Owner:GetBoneMatrix(boneid)
			if not matrix then return end
			local newPos, newAng = LocalToWorld(offsetVec, offsetAng, matrix:GetTranslation(), matrix:GetAngles())
			WorldModel:SetPos(newPos)
			WorldModel:SetAngles(newAng)
			WorldModel:SetupBones()
		else
			WorldModel:SetPos(self:GetPos())
			WorldModel:SetAngles(self:GetAngles())
		end

		WorldModel:DrawModel()
	end
end