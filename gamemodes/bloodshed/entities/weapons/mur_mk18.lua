AddCSLuaFile()


SWEP.Base = "arc9_base"

SWEP.Spawnable = true

SWEP.Category = "ARC9 - Insurgency"

SWEP.SubCategory = "Rifle"

SWEP.AdminOnly = false

SWEP.TakedownType = "rifle"

SWEP.RagdollType = "M4A1"

SWEP.Slot = 2



SWEP.PrintName = "MK18"



SWEP.Class = "Assault Rifle"



SWEP.Description = [[Description Unavailable.]]



SWEP.ViewModel = "models/murdered/weapons/tfa_ins2/c_mk18.mdl"

SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"



SWEP.MirrorVMWM = true 



SWEP.WorldModelOffset = {

	Pos = Vector(-7, 4, -9), -- non tpik (while on ground, on npc etc)

	Ang = Angle(0, 0, 180),

	TPIKPos = Vector(0, 4, -6), -- arc9_tpik 1, you can make cool poses with it

	TPIKAng = Angle(0, 0, 180),

	Scale = 1

}


SWEP.ViewModelFOVBase = 90

SWEP.DamageMax = 42 

SWEP.DamageMin = 54 



SWEP.ImpactForce = 8 



SWEP.DamageRand = 0 



SWEP.RangeMin = 0 

SWEP.RangeMax = 5000 

SWEP.Distance = 33000 



SWEP.CurvedDamageScaling = true 


SWEP.SweetSpotRange = 2500 -- Weapon deals this amount of damage when enemy is within the sweet spot range

SWEP.SweetSpotDamage = 100

SWEP.SweetSpotWidth = 500


SWEP.Num = 1 

SWEP.Penetration = 8 

SWEP.PenetrationDelta = 0.1 

SWEP.NoShellEject = true

SWEP.ShellCorrectPos = Vector(0, 0, 0)

SWEP.ShellCorrectAng = Angle(0, 0, 0)


SWEP.BodyDamageMults = {

	[HITGROUP_HEAD] = 2.5,

	[HITGROUP_CHEST] = 1.25,

	[HITGROUP_STOMACH] = 1,

	[HITGROUP_LEFTARM] = 1,

	[HITGROUP_RIGHTARM] = 1,

	[HITGROUP_LEFTLEG] = 0.9,

	[HITGROUP_RIGHTLEG] = 0.9,

}



SWEP.Ammo = "AR2" 



SWEP.ChamberSize = 0 

SWEP.ClipSize = 30 

SWEP.SupplyLimit = 5 

SWEP.SecondarySupplyLimit = 2 


SWEP.AmmoPerShot = 1 

SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

SWEP.PartialReloadCountsTowardsNthReload = true -- If the gun is not empty, it counts towards the Nth reload. Useful for guns with spare magazine animations.



SWEP.CanFireUnderwater = false -- This weapon can shoot while underwater.



SWEP.Disposable = false -- When all ammo is expended, this gun will remove itself from the inventory.



SWEP.AutoReload = false -- When the gun is drawn, it will automatically reload.



-------------------------- FIREMODES


SWEP.RPM = 580

SWEP.Firemodes = {

	{

		Mode = -1,

	}

}

-------------------------- RECOIL

SWEP.RecoilPatternDrift = 12 


SWEP.RecoilLookupTableOverrun = nil 



-- General recoil multiplier

SWEP.Recoil = 1.5

SWEP.RecoilKick = 2


SWEP.RecoilUp = 2

SWEP.RecoilSide = 3

SWEP.RecoilRandomUp = 0.1

SWEP.RecoilRandomSide = 0.1



SWEP.RecoilDissipationRate = 10

SWEP.RecoilResetTime = 0.1 

SWEP.RecoilFullResetTime = 2 



SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.



SWEP.PushBackForce = 0 -- Push the player back when shooting.



-- SInput rumble configuration

-- Max of 65535

SWEP.RumbleHeavy = 30000

SWEP.RumbleLight = 30000

SWEP.RumbleDuration = 0.12



-------------------------- SPREAD


SWEP.Spread = 0.01

SWEP.RecoilModifierCap = 1


-------------------------- HANDLING

SWEP.BarrelLength = 26.2

SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.

SWEP.Sway = 1 -- How much the gun sways.



SWEP.HoldBreathTime = 5 -- time that you can hold breath for, set to 0 to disable holding breath

SWEP.RestoreBreathTime = 10



SWEP.FreeAimRadiusMultSights = 0.25



SWEP.SwayMultSights = 0.5



SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.

SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.


SWEP.InstantSprintIdle = true -- Instantly go to idle_sprint instead of playing enter_sprint.

SWEP.NoSprintWhenLocked = false -- You cannot sprint while reloading with this gun



SWEP.ReloadTime = 1

SWEP.DeployTime = 1

SWEP.CycleTime = 1

SWEP.FixTime = 1

SWEP.OverheatTime = 1



SWEP.ShootWhileSprint = false



SWEP.Speed = 1



SWEP.SpeedMult = 1

SWEP.SpeedMultSights = 0.75

SWEP.SpeedMultShooting = 0.9

SWEP.SpeedMultMelee = 0.75

SWEP.SpeedMultCrouch = 1

SWEP.SpeedMultBlindFire = 1



-------------------------- SOUNDS



SWEP.ShootVolume = 125

SWEP.ShootVolumeActual = 1

SWEP.ShootPitch = 100

SWEP.ShootPitchVariation = 10 -- Not multiplied, but actually just added/subtracted.



SWEP.FirstShootSound = nil					  -- First fire

SWEP.ShootSound = "murdered/weapons/mk18/mk18_fp.wav"							-- Fire

SWEP.ShootSoundIndoor = nil					 -- Fire indoors

SWEP.ShootSoundSilenced = "murdered/weapons/mk18/mk18_suppressed_tp.wav"					-- i tested fp sound and it sucks

SWEP.ShootSoundSilencedIndoor = nil			 -- Fire indoors silenced

SWEP.FirstShootSoundSilenced = nil			  -- First fire silenced

SWEP.FirstDistantShootSound = nil			   -- First distant fire

SWEP.DistantShootSound = "murdered/weapons/mk18/mk18_dist.wav"					-- Distant fire

SWEP.DistantShootSoundIndoor = nil			  -- Distant fire indoors

SWEP.DistantShootSoundSilenced = nil			-- Distant fire silenced

SWEP.DistantShootSoundSilencedIndoor = nil	  -- Distant fire indoors silenced

SWEP.FirstDistantShootSoundSilenced = nil	   -- First distant fire silenced



SWEP.ShootSoundLooping = nil

SWEP.ShootSoundLoopingSilenced = nil

SWEP.ShootSoundLoopingIndoor = nil

SWEP.ShootSoundTail = nil -- played after the loop ends

SWEP.ShootSoundTailIndoor = nil



SWEP.Silencer = false -- Silencer installed or not?



SWEP.DistantShootSound = nil



SWEP.DryFireSound = ")murdered/weapons/m4a1/handling/m4a1_empty.wav"

SWEP.DryFireSingleAction = false -- Play dryfire sound only once



SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.ToggleAttSound = {

	"arc9/toggles/flashlight_laser_toggle_on_01.ogg",

	"arc9/toggles/flashlight_laser_toggle_on_02.ogg",

	"arc9/toggles/flashlight_laser_toggle_on_03.ogg",

}



SWEP.EnterSightsSound = ""

SWEP.ExitSightsSound = ""



SWEP.EnterBipodSound = "arc9/bipod_down.wav"

SWEP.ExitBipodSound = "arc9/bipod_up.wav"



SWEP.EnterUBGLSound = ""

SWEP.ExitUBGLSound = ""



SWEP.MalfunctionSound = ""


SWEP.MuzzleParticle = "muzzleflash_ak47" -- Used for some muzzle effects.

SWEP.CamQCA = 1

SWEP.CamQCA_Mult = 1

SWEP.CamCoolView = true


-------------------------- POSITIONS



SWEP.IronSights = {

	Pos = Vector(-3.4, -2, 1),

	Ang = Angle(0, 0, 0),

	Magnification = 1,

	AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.

	CrosshairInSights = false,

	Blur = true, -- If arc9_fx_adsblur 1 then blur gun in that ironsights. Disable if your "ironsights" are not real ironsights

	---- FLAT SCOPES

	-- These don't look very good; please use actual RT scopes if possible.

	FlatScope = false,

	FlatScopeOverlay = nil, -- Material()

	FlatScopeKeepVM = false,

	FlatScopeBlackBox = true,

	FlatScopeCC = nil -- Color correction table, see default.lua

}



SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons

	Pos = Vector(-3, 15, -5),

	Ang = Angle(0, 0, -45),

}



SWEP.HasSights = true



-- Alternative "resting" position

SWEP.ActivePos = Vector(0, 0, 0)

SWEP.ActiveAng = Angle(0, 0, 0)


-- Position while walking/running (no sprint)

SWEP.MovingPos = Vector(0, -1, 0)

SWEP.MovingAng = Angle(0, 0, 0)

-- Position when crouching

SWEP.CrouchPos = Vector(-2, -2, -2.5)

SWEP.CrouchAng = Angle(0, 0, -30)



-- Position when sprinting or safe

SWEP.RestPos = Vector(-2, -2, -2.5)

SWEP.RestAng = Angle(0, 0, -30)



-- Overrides RestPos/Ang but only for sprinting

SWEP.SprintPos = Vector(-2, -4, -4)

SWEP.SprintAng = Angle(0, 0, -30)

SWEP.SprintVerticalOffset = true -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)

SWEP.ReloadNoSprintPos = true -- No sprintpos during reloads



SWEP.NearWallPos = Vector(-2, -4, -4)

SWEP.NearWallAng = Angle(0, 0, -30)



SWEP.HolsterPos = Vector(0, 0, -12)

SWEP.HolsterAng = Angle(40, 25, -45)



SWEP.MovingMidPoint = {

	Pos = Vector(0, 0, 0),

	Ang = Angle(0, 0, 0)

}



SWEP.SprintMidPoint = {

	Pos = Vector(4, 8, -4),

	Ang = Angle(0, 5, -25)

}



-- Position for customizing

SWEP.CustomizeAng = Angle(90, 0, 0)

SWEP.CustomizePos = Vector(20, 32, 4)

SWEP.CustomizeRotateAnchor = Vector(21.5, -4.27, -5.23)



SWEP.PeekPos = Vector(2, 2, -0.5)

SWEP.PeekAng = Angle(0, 0, 8)



SWEP.HeightOverBore = 1



SWEP.HoldType = "ar2"

SWEP.HoldTypeSprint = "passive"

SWEP.HoldTypeHolstered = nil

SWEP.HoldTypeSights = "ar2"

SWEP.HoldTypeCustomize = "slam"

SWEP.HoldTypeBlindfire = "pistol"

SWEP.HoldTypeNPC = "ar2"

SWEP.Attachments = {
}


SWEP.Animations = {

	["ready"] = {

		Source = "base_ready",

		Mult = 1,

		EventTable = {

			{

				t = 0.65, -- in seconds

				s = "murdered/weapons/m1a1/handling/m1a1_boltback.wav", -- sound to play

				c = CHAN_ITEM, -- sound channel

			},

			{

				t = 0.9, -- in seconds

				s = "murdered/weapons/m1a1/handling/m1a1_boltrelease.wav", -- sound to play

				c = CHAN_ITEM, -- sound channel

			},

		},

	},

	["idle"] = {

		Source = "base_idle",

		Mult = 1.1,

	},

	["fire"] = {

		Source = "base_fire",

		Mult = 0.9,

	},

	["dryfire"] = {

		Source = "base_dryfire",

		Mult = 1.1,

	},

	["holster"] = {

		Source = "base_holster",

		Time = 0.8,

	},

	["idle_sprint"] = {

		Source = "base_sprint",

		Mult = 0.9,

	},

	["reload"] = {

		Source = "base_reload",

		Mult = 0.9,

		EventTable = {

			{

				t = 0.4, -- in seconds

				s = "murdered/weapons/m1a1/handling/m1a1_magout.wav", -- sound to play

				c = CHAN_ITEM, -- sound channel

			},

			{

				t = 2.1, -- in seconds

				s = "murdered/weapons/m1a1/handling/m1a1_magin.wav", -- sound to play

				c = CHAN_ITEM, -- sound channel

			},

		},

	},

	["reload_empty"] = {

		Source = "base_reload_empty",

		Mult = 0.9,

		EventTable = {

			{

				t = 0.4, -- in seconds

				s = "murdered/weapons/m1a1/handling/m1a1_magout.wav", -- sound to play

				c = CHAN_ITEM, -- sound channel

			},

			{

				t = 2.1, -- in seconds

				s = "murdered/weapons/m1a1/handling/m1a1_magin.wav", -- sound to play

				c = CHAN_ITEM, -- sound channel

			},

			{

				t = 3.6, -- in seconds

				s = "murdered/weapons/m4a1/handling/m4a1_fireselect.wav", -- sound to play

				c = CHAN_ITEM, -- sound channel

			},

		},

	},

	["draw"] = {

		Source = "base_draw",

		Time = 0.4, 

		Mult = 1,

		Reverse = false, 

		EventTable = {



		},

	}

}