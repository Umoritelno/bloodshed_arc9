AddCSLuaFile()


SWEP.Base = "arc9_base"

SWEP.Spawnable = true

SWEP.Category = "ARC9 - Insurgency"

SWEP.SubCategory = "Rifle"

SWEP.AdminOnly = false

SWEP.TakedownType = "rifle"

SWEP.RagdollType = "AK47"

SWEP.Slot = 2



SWEP.PrintName = "AK-103"

SWEP.TrueName = nil



SWEP.Class = "Assault Rifle"



SWEP.Description = [[Description Unavailable.]]

SWEP.UseHands = true -- Same as weapon_base



SWEP.ViewModel = "models/murdered/weapons/c_ins2_rif_ak103.mdl"

SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"



SWEP.MirrorVMWM = true

SWEP.WorldModelMirror = nil

SWEP.WorldModelOffset = {

    Pos = Vector(-5, 4.2, -7),

    Ang = Angle(0, 0, 180),

    TPIKPos = Vector(0, 4, -6),

    TPIKAng = Angle(0, 0, 180),

    Scale = 1

}

SWEP.NoTPIK = false

SWEP.NoTPIKVMPos = false

SWEP.Material = ""



SWEP.Crosshair = false

SWEP.LauncherCrosshair = false -- Force the launcher crosshair

SWEP.MissileCrosshair = false -- Force the missile launcher crosshair



SWEP.ViewModelFOVBase = 80



SWEP.NoDynamicKillIcon = false



SWEP.NotAWeapon = false -- Set to true to indicate that this is not a weapon.

-- Disables pretty much all base features except for controls and aesthetics, allowing for custom weapons to be implemented.



SWEP.ARC9WeaponCategory = nil -- See sh_common.lua



-------------------------- SAVING



SWEP.SaveBase = nil -- set to a weapon class to make this weapon share saves with it.



-------------------------- DEFAULT ELEMENTS



-- Using MirrorVMWM will use viewmodel parameters for the world model.



SWEP.DefaultBodygroups = ""

-- {

--     {

--         ind = 0,

--         bg = 0,

--     }

-- }



SWEP.DefaultWMBodygroups = ""



SWEP.DefaultSkin = 0



-------------------------- DAMAGE PROFILE



SWEP.DamageMax = 64 -- Damage done at point blank range

SWEP.DamageMin = 52 -- Damage done at maximum range



SWEP.ImpactForce = 8 -- Force that bullets apply on hit



SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.



SWEP.RangeMin = 0 -- How far bullets retain their maximum damage for.

SWEP.RangeMax = 5000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.



SWEP.CurvedDamageScaling = true -- If true, damage will scale in a quadratic curve between RangeMin and RangeMax. If false, damage will scale linearly.



SWEP.SweetSpot = false

SWEP.SweetSpotRange = 2500 -- Weapon deals this amount of damage when enemy is within the sweet spot range

SWEP.SweetSpotDamage = 100

SWEP.SweetSpotWidth = 500



SWEP.DamageLookupTable = nil --[[ Example: {

    {

        500, 100

    },

    {

        1000, 50

    },

    {

        2000, 10

    }

}

]]--



--[[

function SWEP:Hook_GetDamageAtRange(data)

    data.dmg = (math.sin(data.range / 250) + 1) * 10



    return data

end

]]--



SWEP.Num = 1 -- Number of bullets to shoot



SWEP.DistributeDamage = false -- If true, damage is distributed evenly across all bullets. If false, damage is dealt to the first bullet only.

SWEP.NormalizeNumDamage = false -- If true, total damage will not change if Num is modified. Does not work with DistributeDamage.



SWEP.Penetration = 12 -- Units of wood that can be penetrated by this gun.

SWEP.PenetrationDelta = 0.1 -- The damage multiplier after all penetration distance is spent.



SWEP.RicochetAngleMax = 45 -- Maximum angle at which a ricochet can occur. Between 1 and 90. Angle of 0 is impossible but would theoretically always ricochet.

SWEP.RicochetChance = 0.5 -- If the angle is right, what is the chance that a ricochet can occur?

SWEP.RicochetSeeking = false -- Whether ricochet bullets will seek living targets in a cone.

SWEP.RicochetSeekingAngle = 30

SWEP.RicochetSeekingRange = 1024



SWEP.DamageType = DMG_BULLET -- The damage type of the gun.

-- DMG_BLAST will create explosive effects and create AOE damage.

-- DMG_BURN will ignite the target.

-- DMG_AIRBOAT will damage Combine Hunter-Choppers.



SWEP.ArmorPiercing = 0 -- Between 0-1. A proportion of damage that is done as direct damage, ignoring protection.



-- Individual multipliers that can be used with modifiers

SWEP.HeadshotDamage = 1

SWEP.ChestDamage = 1

SWEP.StomachDamage = 1

SWEP.ArmDamage = 1

SWEP.LegDamage = 1



SWEP.BodyDamageMults = {

    [HITGROUP_HEAD] = 2.5,

    [HITGROUP_CHEST] = 1.25,

    [HITGROUP_STOMACH] = 1,

    [HITGROUP_LEFTARM] = 1,

    [HITGROUP_RIGHTARM] = 1,

    [HITGROUP_LEFTLEG] = 0.9,

    [HITGROUP_RIGHTLEG] = 0.9,

}



-- Set the multiplier for each part of the body.

-- If a limb is not set the damage multiplier will default to 1

-- That means gmod's stupid default limb mults will **NOT** apply

-- {

--     [HITGROUP_HEAD] = 1.25,

--     [HITGROUP_CHEST] = 1,

--     [HITGROUP_LEFTARM] = 0.9,

--     [HITGROUP_RIGHTARM] = 0.9,

-- }



SWEP.ExplosionDamage = 0

SWEP.ExplosionRadius = 0

SWEP.ExplosionEffect = nil



-------------------------- ENTITY LAUNCHING



SWEP.ShootEnt = nil -- Set to an entity to launch it out of this weapon.

SWEP.ShootEntForce = 10000

SWEP.ShootEntInheritPlayerVelocity = false -- Set to true to inherit velocity

SWEP.ShootEntInheritPlayerVelocityLimit = 0 -- Upper limit of velocity to inherit. 0 - no limit.

SWEP.ShootEntData = {} -- Extra data that can be given to a projectile. Sets ENT.ShootEntData with this table.



SWEP.Throwable = false -- Set to true to give this weapon throwing capabilities.

SWEP.Tossable = true -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.

SWEP.ThrowAnimSpeed = 1



SWEP.FuseTimer = -1 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.



SWEP.ThrowForceMin = 3000 -- Minimum force that the grenade will be thrown with.

SWEP.ThrowForceMax = 5000 -- Maximum force that the grenade will be thrown with.

SWEP.TossForce = 500 -- Force that the grenade will be thrown with when right clicked.



SWEP.ThrowChargeTime = 1 -- How long it takes to charge the grenade to its maximum throw force.



SWEP.ThrowTumble = true -- Grenade tumbles when thrown.



SWEP.ThrowOnGround = false -- If set, entity's position and angles ignores vertical aim, and is lowered by up to 36 units onto the ground.



SWEP.Detonator = false -- Set to true to give this weapon a detonator. After throwing out a grenade, you enter detonator mode.



-------------------------- PHYS BULLET BALLISTICS



-- These settings override the player's physical bullet options.

SWEP.AlwaysPhysBullet = false

SWEP.NeverPhysBullet = false



SWEP.PhysBulletMuzzleVelocity = 150000 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

SWEP.PhysBulletDrag = 1 -- Drag multiplier

SWEP.PhysBulletGravity = 1 -- Gravity multiplier

SWEP.PhysBulletDontInheritPlayerVelocity = false -- Set to true to disable "Browning Effect"



SWEP.FancyBullets = false -- set to true to allow for multicolor mags and crap

-- Each bullet runs HookP_ModifyBullet, within which modifications can be made



-- if true, bullets follow the player's cursor

SWEP.BulletGuidance = false

SWEP.BulletGuidanceAmount = 15000 -- the amount of guidance to apply



-- Make the physical bullet use a model instead of the tracer effect.

-- You MUST register the model beforehand in a SHARED context (such as the SWEP file) like so: ARC9:RegisterPhysBulletModel("models/weapons/w_missile.mdl")

SWEP.PhysBulletModel = nil

SWEP.PhysBulletModelStick = nil -- The amount of time a physbullet model will stick on impact.



-------------------------- TRACERS



SWEP.TracerNum = 1 -- Tracer every X

SWEP.TracerFinalMag = 0 -- The last X bullets in a magazine are all tracers

SWEP.TracerEffect = "ARC9_tracer" -- The effect to use for hitscan tracers

SWEP.TracerColor = Color(255, 255, 255) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

SWEP.TracerSize = 1



-------------------------- SHOOTPOS



SWEP.ShootPosOffset = Vector(0, 0, 0)

SWEP.ShootAngOffset = Angle(0, 0, 0)



-------------------------- MAGAZINE



SWEP.Ammo = "AR2" -- What ammo type this gun uses.



SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.

SWEP.ClipSize = 30 -- Self-explanatory.

SWEP.SupplyLimit = 5 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.



SWEP.ForceDefaultClip = true  -- Set to force a default amount of ammo this gun can have. Otherwise, this is controlled by console variables.



SWEP.AmmoPerShot = 1 -- Ammo to use per shot

SWEP.InfiniteAmmo = false -- Weapon does not take from reserve ammo

SWEP.BottomlessClip = false -- Weapon never has to reload



SWEP.ShotgunReload = false -- Weapon reloads like shotgun. Uses insert_1, insert_2, etc animations instead.

SWEP.HybridReload = false -- Enable on top of Shotgun Reload. If the weapon is completely empty, use the normal reload animation.

-- Use SWEP.Hook_TranslateAnimation in order to do custom animation stuff.

SWEP.ShotgunReloadIncludesChamber = true -- Shotguns reload to full capacity, assuming that the chamber is loaded as part of the animation.



SWEP.ManualActionChamber = 1 -- How many shots we go between needing to cycle again.

SWEP.ManualAction = false -- Pump/bolt action. Play the "cycle" animation after firing, when the trigger is released.

SWEP.ManualActionNoLastCycle = false -- Do not cycle on the last shot.

SWEP.ManualActionEjectAnyway = false -- Eject a shell when firing anyway.

SWEP.EjectDelay = 0 -- When eject shell on cycle (pretty dumb, better'd just use EjectAt)



SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

SWEP.PartialReloadCountsTowardsNthReload = true -- If the gun is not empty, it counts towards the Nth reload. Useful for guns with spare magazine animations.



SWEP.CanFireUnderwater = false -- This weapon can shoot while underwater.



SWEP.Disposable = false -- When all ammo is expended, this gun will remove itself from the inventory.



SWEP.AutoReload = false -- When the gun is drawn, it will automatically reload.



SWEP.ShouldDropMag = false

SWEP.ShouldDropMagEmpty = true



SWEP.DropMagazineModel = nil -- Set to a string or table to drop this magazine when reloading.

SWEP.DropMagazineSounds = {} -- Table of sounds a dropped magazine should play.

SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.

SWEP.DropMagazineSkin = 0 -- Model skin of mag.

SWEP.DropMagazineTime = 0.25

SWEP.DropMagazineQCA = nil -- QC Attachment drop mag from, would drop from shell port if not defined

SWEP.DropMagazinePos = Vector(0, 0, 0) -- offsets

SWEP.DropMagazineAng = Angle(0, 0, 0)

SWEP.DropMagazineVelocity = Vector(0, 0, 0) -- Put something here if your anim throws the mag with force



SWEP.BarrelLength = 0 -- Distance for nearwalling



SWEP.DryFireDelay = false -- Set to set time, otherwise uses animation length



-------------------------- FIREMODES



SWEP.RPM = 520



SWEP.TriggerDelay = false -- Add a delay before the weapon fires.

SWEP.TriggerDelayTime = 0.2 -- Time until weapon fires.

SWEP.TriggerDelayRepeat = false -- Whether to do it for every shot on automatics.

SWEP.TriggerDelayCancellable = true -- Whether it is possible to cancel trigger delay by releasing the trigger before it is done.

SWEP.TriggerDelayReleaseToFire = false -- Release the trigger to fire instead of firing as soon as the delay is over.

SWEP.TriggerStartFireAnim = false -- Whether trigger begins the firing animation



-- Works different to ArcCW



-- -1: Automatic

-- 0: Safe. Don't use this for safety.

-- 1: Semi.

-- 2: Two-round burst.

-- 3: Three-round burst.

-- n: n-round burst.

SWEP.Firemodes = {

    {

        Mode = -1,

        -- add other attachment modifiers

    }

}



SWEP.FiremodeAnimLock = false -- Firemode animation cannot be interrupted



SWEP.SlamFire = false -- Manual action weapons cycle themselves



SWEP.AutoBurst = false -- Hold fire to keep firing bursts

SWEP.PostBurstDelay = 0

SWEP.RunawayBurst = false -- Burst will keep firing until all of the burst has been expended.



SWEP.Akimbo = false -- Alternate shooting animation with "fire_left" and "fire_right"

SWEP.AkimboBoth = false -- Play effects twice and use "fire_both" for shooting animation. Does not actually affect ammo consumed or bullets fired.



-- Use this hook to modify features of a firemode.

-- SWEP.HookP_ModifyFiremode = function(self, firemode) return firemode end



-------------------------- RECOIL



SWEP.RecoilSeed = nil -- Leave blank to use weapon class name as recoil seed.

-- Should be a number.

SWEP.RecoilPatternDrift = 12 -- Higher values = more extreme recoil patterns.

SWEP.RecoilLookupTable = nil -- Use to set specific values for predictible recoil. If it runs out, it'll just use Recoil Seed.

-- SWEP.RecoilLookupTable = {

--     15,

--     3,

-- }

SWEP.RecoilLookupTableOverrun = nil -- Repeatedly take values from this table if we run out in the main table



-- General recoil multiplier

SWEP.Recoil = 1.5



-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.

SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 2 -- Multiplier for vertical recoil



-- This is for recoil that goes directly to camera, makes gun shoot where sights at but center of screen will be in different place. Like escape from t

SWEP.ViewRecoil = nil -- true

SWEP.ViewRecoilUpMult = nil -- 40-100

SWEP.ViewRecoilSideMult = nil -- 1-20



-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.

-- This type of recoil CANNOT be predicted.

SWEP.RecoilRandomUp = 0.1

SWEP.RecoilRandomSide = 0.1



SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.

SWEP.RecoilResetTime = 0.1 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilFullResetTime = 2 -- How long recoil must stay after last shoot



SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.



SWEP.PushBackForce = 0 -- Push the player back when shooting.



-- SInput rumble configuration

-- Max of 65535

SWEP.RumbleHeavy = 30000

SWEP.RumbleLight = 30000

SWEP.RumbleDuration = 0.12



-------------------------- UBGL

-- Underbarrel weapons

-- Stats that BEGIN with UBGL are actual specific stats

SWEP.UBGL = false

SWEP.UBGLAmmo = "smg1_grenade"

SWEP.UBGLClipSize = 1

SWEP.UBGLFiremode = 1

SWEP.UBGLFiremodeName = "UBGL"

SWEP.UBGLChamberSize = 0

SWEP.UBGLInsteadOfSights = false -- Right clicking fires UBGL instead of going into irons.

SWEP.UBGLExclusiveSights = false -- Enable to allow only UBGLOnly sights to be used.



-- Otherwise, these are just stats that get overwritten when selecting a UBGL.

SWEP.AmmoPerShotUBGL = 1

SWEP.SpreadUBGL = 0.0

SWEP.RecoilUBGL = 1

SWEP.DoFireAnimationUBGL = true

SWEP.NoShellEjectUBGL = true

SWEP.ManualActionUBGL = false

SWEP.ShouldDropMagUBGL = false

SWEP.ShotgunReloadUBGL = false

SWEP.HybridReloadUBGL = false



-------------------------- VISUAL RECOIL



SWEP.UseVisualRecoil = false



SWEP.PhysicalVisualRecoil = true -- Visual recoil actually affects your aim point.



SWEP.VisualRecoilUp = 0.2 -- Vertical tilt for visual recoil.F

SWEP.VisualRecoilSide = 0.05 -- Horizontal tilt for visual recoil.

SWEP.VisualRecoilRoll = 0.23 -- Roll tilt for visual recoil.



SWEP.VisualRecoilCenter = Vector(2, 4, 2) -- The "axis" of visual recoil. Where your hand is.



SWEP.VisualRecoilPunch = 2 -- How far back visual recoil moves the gun.

SWEP.VisualRecoilPunchMultSights = 0.1



-- SWEP.VisualRecoilMult = 1

-- SWEP.VisualRecoilADSMult = 0.1

-- SWEP.VisualRecoilPunchADSMult = 0.1



SWEP.VisualRecoil = 1

SWEP.VisualRecoilMultSights = 0.1

SWEP.VisualRecoilPositionBump = 1.5

SWEP.VisualRecoilPositionBumpUp = 0.08 -- its a mult





SWEP.VisualRecoilDampingConst = nil -- How spring will be visual recoil, 120 is default

SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilSpringPunchDamping = nil -- ehh another val for "eft" recoil, 6 is default



SWEP.VisualRecoilThinkFunc = nil -- wawa, override DampingConst, SpringMagnitude, SpringPunchDamping here 

-- function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)

--     if recamount > 3 then

--         return springconstant * 100, VisualRecoilSpringMagnitude * 1, PUNCH_DAMPING * 1

--     end

--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING

-- end



SWEP.VisualRecoilDoingFunc = nil -- wawa, override Up, Side, Roll here 

-- function(up, side, roll, punch, recamount)

--     if recamount > 2 then

--         return up * 5, side * 1.5, roll, punch * 0.9

--     end

--     return up, side, roll, punch

-- end



SWEP.RecoilKick = 2 -- Camera recoil

SWEP.RecoilKickDamping = 70.151 -- Camera recoil damping



-------------------------- SPREAD



SWEP.Spread = 0.01



SWEP.UseDispersion = false -- Use this for shotguns - Additional random angle to spread, same for each pellet

SWEP.DispersionSpread = 0.2 -- SWEP.Spread will be clump spread, and this will be dispersion of clump



SWEP.SpreadAddMove = 0 -- Applied when speed is equal to walking speed.

SWEP.SpreadAddMidAir = 0 -- Applied when not touching the ground.

SWEP.SpreadAddHipFire = 0 -- Applied when not sighted.

SWEP.SpreadAddSighted = 0 -- Applied when sighted. Can be negative.

SWEP.SpreadAddBlindFire = 0 -- Applied when blind firing.

SWEP.SpreadAddCrouch = 0 -- Applied when crouching.



SWEP.SpreadAddRecoil = 0.005 -- Applied per unit of recoil.



-- Limit the effect of recoil on modifiers to this much.

-- Because the per shot modifier used to be broken and effectively had a limit of 1, it is set to 1 by default. You should probably set it higher.

SWEP.RecoilModifierCap = 1



-------------------------- HANDLING



SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.

SWEP.Sway = 1 -- How much the gun sways.



SWEP.HoldBreathTime = 5 -- time that you can hold breath for, set to 0 to disable holding breath

SWEP.RestoreBreathTime = 10



SWEP.FreeAimRadiusMultSights = 0.25



SWEP.SwayMultSights = 0.5



SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.

SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.



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



-------------------------- MELEE



SWEP.Bash = false

SWEP.PrimaryBash = false



SWEP.BashDamage = 5

SWEP.BashLungeRange = 64

SWEP.BashRange = 64

SWEP.PreBashTime = 0.5

SWEP.PostBashTime = 0.5

SWEP.BashDamageType = DMG_CLUB

SWEP.BashDecal = "ManhackCut"



SWEP.BashWhileSprint = false -- Unlike ShootWhileSprint, this will not require transitioning out of sprint state (and waiting the sprinttofire delay)



SWEP.BashThirdArmAnimation = {

        rig = "models/weapons/arc9/lhik/c_thirdarm_pdw.mdl",

        sequence = {"melee1", "melee2"},

        -- sequence = "melee1",

        gun_controller_attachment = 1,

        -- offsetang = Angle(90, 180, 90),

        mult = 1,

        invisible = false,

    }



SWEP.SecondaryBash = false

SWEP.Backstab = false



-------------------------- LOCKON



SWEP.LockOn = false

-- SWEP.LockOnSights = false



-- Do not use LockOn and LockOnSights together

-- LockOn will provide targeting data in ENT.ShootEntData



SWEP.LockOnAutoaim = false -- Gun will shoot directly towards lockon target



SWEP.LocksLiving = false -- Locks on to any NPC or player

SWEP.LocksGround = false -- Will lock on to any entity deemed a ground target and not an air target

SWEP.LocksAir = false -- Will lock on to any entity deemed an air target, and not a ground target



SWEP.LockOnRange = 100000 -- How far away the lockon can be

SWEP.LockOnFOV = 10 -- How wide the lockon can be

SWEP.LockedOnFOV = 20 -- FOV needed to maintain a lock



SWEP.LockOnTime = 0.5 -- How long it takes to lock on, in seconds



SWEP.LockOnSound = nil -- Sound to play when locking on

SWEP.LockedOnSound = nil -- Sound to play when successfully locked target



SWEP.LockOnHUD = true -- Show a box around locked targets



-------------------------- MALFUNCTIONS



SWEP.Overheat = false -- Weapon will jam when it overheats, playing the "overheat" animation.

SWEP.HeatPerShot = 1

SWEP.HeatCapacity = 1 -- rounds that can be fired non-stop before the gun jams, playing the "fix" animation

SWEP.HeatDissipation = 10 -- rounds' worth of heat lost per second

SWEP.HeatLockout = true -- overheating means you cannot fire until heat has been fully depleted

SWEP.HeatDelayTime = 0.5 -- Amount of time that passes before heat begins to dissipate.

SWEP.HeatFix = false -- when the "overheat" animation is played, all heat is restored.



-- If Malfunction is enabled, the gun has a random chance to be jammed

-- after the gun is jammed, it won't fire unless reload is pressed, which plays the "fix" animation

-- if no "fix" or "cycle" animations exist, the weapon will reload instead

-- When the trigger is pressed, the gun will try to play the "jamfire" animation. Otherwise, it will try "dryfire". Otherwise, it will do nothing.

SWEP.Malfunction = false

SWEP.MalfunctionJam = true -- After a malfunction happens, the gun will dryfire until reload is pressed. If unset, instead plays animation right after.  -- are you sure? doesnt seem to work

SWEP.MalfunctionNeverLastShoot = true -- Last round will never cause malfunctions (so guns with empty animations wont be fucky)

SWEP.MalfunctionCycle = false -- ManualAction = true only: Roll malfunction roullete not after shoot but before every cycle anim

SWEP.MalfunctionWait = 0 -- The amount of time to wait before playing malfunction animation (or can reload)

SWEP.MalfunctionMeanShotsToFail = 1000 -- The mean number of shots between malfunctions, will be autocalculated if nil



-------------------------- HOOKS



-- SWEP.Hook_Draw = function(self, vm) end # Called when the weapon is drawn. Call functions here to modify the viewmodel, such as drawing RT screens onto the gun.

-- SWEP.Hook_HUDPaint = function(self) end

-- SWEP.Hook_HUDPaintBackground = function(self) end

-- SWEP.Hook_RTScopeReticle = function(self, {rtsize = num, rtmat = Material})

-- SWEP.Hook_ModifyRecoilDir = function(self, dir) return dir end # direction of recoil in degrees, 0 = up

-- SWEP.HookP_ModifyFiremode = function(self, firemode) return firemode end

-- SWEP.HookC_DrawBullet = function(self, bullet) return bool end -- called when a bullet gets drawn, return true to prevent drawing bullet

-- SWEP.HookP_ModifyBullet = function(self, bullet) return end # bullet = phys bullet table, modify in place, does not accept return

-- SWEP.HookP_ModifyNewBullet = function(self, bullet) return end # bullet = phys bullet table, modify in place, does not accept return

-- SWEP.HookP_BlockFire = function(self) return block end # return true to block firing

-- SWEP.Hook_ModifyBodygroups = function(self, data) return end # data = {model = Model, elements = {"table" = true, "of" = true, "elements" = true}}

-- SWEP.HookP_ModifyBulletPoseParam = function(self, pp) return pp end

-- SWEP.HookP_ModifyFiremodePoseParam = function(self, pp) return pp end

-- SWEP.Hook_DoRT = function(self) return end

-- SWEP.Hook_Think = function(self) return end

-- SWEP.Hook_Deploy = function(self) return end

-- SWEP.Hook_Holster = function(self) return end

-- SWEP.Hook_GetShootEntData = function(self, table) return end -- Each function should add an entry to the table for shoot ents

-- SWEP.HookP_NameChange = function(self, name) return name end

-- SWEP.HookP_DescriptionChange = function(self, desc) return desc end

-- SWEP.Hook_BlockAnimation = function(self, anim) return block end -- Return true to block animation from playing.

-- SWEP.Hook_PrimaryAttack = function(self) return end -- Called when the primary attack is fired.

-- SWEP.Hook_SwitchSight = function(self, newsight) return end -- Called when a sight is switched.

-- SWEP.Hook_ToggleAtts = function(self) return end -- Called when attachments are toggled with F.

-- SWEP.HookP_TranslateSound = function(self, data) return data end # data = {sound = "sound", name = "fire", volume = 1, pitch = 100, level = 100, channel = CHAN_AUTO, volume = 100, flags = SND_NOFLAGS, dsp = 0}

-- SWEP.Hook_BulletImpact = function(self, data) return end # data = {tr, dmg, range, penleft, alreadypenned, dmgv}

-- SWEP.Hook_LockOn = function(self, ent) return end -- Called when a lock on is made.

-- SWEP.HookC_CanLockOn = function(self, ent) return true end -- Return true to allow lock on.

-- SWEP.HookC_CannotLockOn = function(self, ent) return true end -- Return true to disallow lock on. Has priority over CanLockOn.

-- SWEP.HookS_GetLockOnScore = function(self, ent) return 0 end -- Return new score

-- SWEP.Hook_GetAttachmentPos = function(self, data) return data end -- {atttbl = {}, slottbl = {}, pos = Vector, ang = Angle}

-- SWEP.Hook_HideBones = function(self, bones) return bones end -- {"bone" = true, "bone" = true...}

-- SWEP.Hook_ModifyElements = function(self, eles) return eles end -- {"ele" = true, "ele" = true...}

-- SWEP.Hook_TranslateSource = function(self, source) return source end -- String, use this to modify source strings directly

-- SWEP.Hook_GetDamageAtRange(self, data) return data end -- {range = range, dmg = dmg, d = delta}

-- SWEP.Hook_OnKill(self, ent) return end

-- SWEP.Hook_BlockHasAnimation(self, anim) return false end -- Return false to claim the animation does not exist.

-- SWEP.Hook_BlockTPIK(self) return true end -- Return true to block TPIK.

-- SWEP.Hook_GrenadeThrown(self, data) return end -- Called when grenade is released and about to be thrown. {force = 0, delay = 0}

-- SWEP.Hook_GrenadeCreated(self, nades) return end -- Called when grenade entities are created. nades is a table of entities.

-- SWEP.Hook_Bash(self, tr) return end

-- SWEP.Hook_BashHit(self, data) return end -- {tr, dmg}

-- SWEP.Hook_PostReload(self) return end -- called after a reload successfully starts

-- SWEP.Hook_EndReload(self) return end -- called after a reload loads ammo (ammo went in magazine)



-- SOUND NAMES FOR TRANSLATESOUND:

-- install

-- uninstall

-- enterbipod

-- exitbipod

-- firemode

-- safety

-- jam

-- shootlooptailindoor

-- shootlooptail

-- meleeswing

-- meleehit

-- meleehitwall

-- dryfire

-- shootsound

-- shootlayer

-- shootdistant

-- shootsoundindoor

-- shootlayerindoor

-- shootdistantindoor

-- entersights

-- exitsights

-- zoom

-- breathrunout

-- breathin

-- breathout

-- soundtable_1, soundtable_2...

-- enterubgl

-- exitubgl

-- lockon

-- lockedon



-------------------------- LEAN



SWEP.CanLean = true



-------------------------- BLIND FIRE

-- This feature has been removed pending rework, and these functions do not work.



SWEP.CanBlindFire = true -- This weapon is capable of blind firing.

SWEP.BlindFireLHIK = true -- Hide the left hand while blind firing forward.



SWEP.BlindFireLeft = true

SWEP.BlindFireRight = false -- This weapon can blind fire towards the right. Generally keep this off.



SWEP.BlindFireOffset = Vector(0, 0, 32) -- The amount by which to offset the blind fire muzzle.

SWEP.BlindFirePos = Vector(-6, -4, 12)

SWEP.BlindFireAng = Angle(0, 0, -45)



SWEP.BlindFireRightOffset = Vector(0, 24, 0) -- The amount by which to offset the blind fire muzzle.

SWEP.BlindFireRightPos = Vector(-12, 12, 0)

SWEP.BlindFireRightAng = Angle(-90, 0, 0)



SWEP.BlindFireLeftOffset = Vector(0, 24, 0) -- The amount by which to offset the blind fire muzzle.

SWEP.BlindFireLeftPos = Vector(12, 10, 0)

SWEP.BlindFireLeftAng = Angle(90, 0, 0)



SWEP.BlindFireBoneMods = {

    ["ValveBiped.Bip01_R_UpperArm"] = {

        ang = Angle(45, -90, 0),

        pos = Vector(0, 0, 0)

    },

    ["ValveBiped.Bip01_R_Hand"] = {

        ang = Angle(-90, 0, 0),

        pos = Vector(0, 0, 0)

    }

}

SWEP.BlindFireLeftBoneMods = {

    ["ValveBiped.Bip01_R_UpperArm"] = {

        ang = Angle(45, 0, 0),

        pos = Vector(0, 0, 0)

    },

    ["ValveBiped.Bip01_R_Hand"] = {

        ang = Angle(0, -75, 0),

        pos = Vector(0, 0, 0)

    }

}



SWEP.BlindFireRightBoneMods = {

    ["ValveBiped.Bip01_R_UpperArm"] = {

        ang = Angle(-45, 0, 0),

        pos = Vector(0, 0, 0)

    },

    ["ValveBiped.Bip01_R_Hand"] = {

        ang = Angle(0, 75, 0),

        pos = Vector(0, 0, 0)

    }

}



-------------------------- NPC



SWEP.NotForNPCs = false -- Won't be given to NPCs.



-------------------------- BIPOD



SWEP.Bipod = false -- This weapon comes with a bipod.

SWEP.RecoilMultBipod = 0.25

SWEP.SwayMultBipod = 0.25

SWEP.FreeAimRadiusMultBipod = 0



-------------------------- SOUNDS



SWEP.ShootVolume = 125

SWEP.ShootVolumeActual = 1

SWEP.ShootPitch = 100

SWEP.ShootPitchVariation = 10 -- Not multiplied, but actually just added/subtracted.



SWEP.FirstShootSound = nil                      -- First fire

SWEP.ShootSound = "murdered/weapons/ak74/ak74_fp.wav"                            -- Fire

SWEP.ShootSoundIndoor = nil                     -- Fire indoors

SWEP.ShootSoundSilenced = "murdered/weapons/ak74/ak74_suppressed_fp.wav"                    -- Fire silenced

SWEP.ShootSoundSilencedIndoor = nil             -- Fire indoors silenced

SWEP.FirstShootSoundSilenced = nil              -- First fire silenced

SWEP.FirstDistantShootSound = nil               -- First distant fire

SWEP.DistantShootSound = "murdered/weapons/ak74/ak74_dist.wav"                    -- Distant fire

SWEP.DistantShootSoundIndoor = nil              -- Distant fire indoors

SWEP.DistantShootSoundSilenced = nil            -- Distant fire silenced

SWEP.DistantShootSoundSilencedIndoor = nil      -- Distant fire indoors silenced

SWEP.FirstDistantShootSoundSilenced = nil       -- First distant fire silenced



SWEP.ShootSoundLooping = nil

SWEP.ShootSoundLoopingSilenced = nil

SWEP.ShootSoundLoopingIndoor = nil

SWEP.ShootSoundTail = nil -- played after the loop ends

SWEP.ShootSoundTailIndoor = nil



SWEP.Silencer = false -- Silencer installed or not?



SWEP.DistantShootSound = nil



SWEP.DryFireSound = ")murdered/weapons/ak74/handling/ak74_empty.wav"

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



SWEP.MeleeHitSound = "arc9/melee_hitbody.wav"

SWEP.MeleeHitWallSound = "arc9/melee_hitworld.wav"

SWEP.MeleeSwingSound = "arc9/melee_miss.wav"

SWEP.BackstabSound = "weapons/knife/knife_stab.wav"



SWEP.BreathInSound = "arc9/breath_inhale.wav"

SWEP.BreathOutSound = "arc9/breath_exhale.wav"

SWEP.BreathRunOutSound = "arc9/breath_runout.wav"



SWEP.TriggerDownSound = ""

SWEP.TriggerUpSound = ""



-------------------------- EFFECTS



SWEP.NoMuzzleEffect = false -- Disable muzzle effect entirely

SWEP.NoFlash = false -- Disable light flash



SWEP.MuzzleParticle = "muzzleflash_ak47" -- Used for some muzzle effects.



SWEP.MuzzleEffect = "MuzzleFlash"

SWEP.FastMuzzleEffect = nil



SWEP.AfterShotEffect = "arc9_aftershoteffect"

SWEP.AfterShotParticle = nil -- Particle to spawn after shooting

SWEP.AfterShotParticleDelay = 0.01 -- Delay before spawning the particle



SWEP.ImpactEffect = nil

SWEP.ImpactDecal = nil

SWEP.ImpactSound = nil



SWEP.ShellEffect = nil -- Override the ARC9 shell eject effect for your own.

SWEP.ShellEffectCount = 0



SWEP.ShellModel = "models/shells/shell_556.mdl"

SWEP.ShellMaterial = nil -- string



SWEP.ExtraShellModels = nil -- For eventtable {{model = "", mat = "", scale = 1, physbox = Vector(1, 1, 1), pitch = 100, sounds = {}}}



SWEP.ShellSmoke = true



SWEP.NoShellEject = false -- Don't eject shell on fire

SWEP.NoShellEjectManualAction = false -- Don't eject shell while cycling

SWEP.ManualActionEjectAnyway = false -- Overrides standard behaviour to eject a shell when a shot is fired and manual action is on.



SWEP.ShellScale = 1

SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)



SWEP.ShellPitch = 100 -- for shell sounds

SWEP.ShellSounds = ARC9.ShellSoundsTable



SWEP.RicochetSounds = ARC9.RicochetSounds



SWEP.ShellCorrectPos = Vector(0, -2, 2)

SWEP.ShellCorrectAng = Angle(0, 90, 0)

SWEP.ShellVelocity = nil -- nothing for random, otherwise keep this 0 - 2

SWEP.ShellTime = 1 -- Extra time these shells stay on the ground for.



SWEP.IgnoreMuzzleDevice = false -- Do not use the attachment muzzle device, use QCA muzzle instead.



SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.

SWEP.AfterShotQCA = nil -- QC Attachment that controls after shot particle.

SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.

SWEP.CamQCA = nil -- QC Attachment for camera movement.

SWEP.CamQCA_Mult = nil -- Intensity for QC camera movement.

SWEP.CamQCA_Mult_ADS = nil -- Intensity for QC camera movement in ADS.

SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.



SWEP.CamOffsetAng = Angle(0, 0, 0)



SWEP.DoFireAnimation = true



SWEP.NoViewBob = false



-------------------------- VISUALS



SWEP.BulletBones = { -- the bone that represents bullets in gun/mag

    -- [0] = "bulletchamber",

    -- [1] = "bullet1"

}

SWEP.CaseBones = {}

-- Unlike BulletBones, these bones are determined by the missing bullet amount when reloading

SWEP.StripperClipBones = {}



-- The same as the bone versions but works via bodygroups.

-- Bodygroups work the same as in attachmentelements.

-- [0] = {ind = 0, bg = 1}

SWEP.BulletBGs = {}

SWEP.CaseBGs = {}

SWEP.StripperClipBGs = {}



SWEP.HideBones = {} -- bones to hide in third person and customize menu. {"list", "of", "bones"}

SWEP.ReloadHideBoneTables = { -- works only with TPIK

    -- [1] = {"list", "of", "bones"},

    -- [2] = {"list", "of", "bones"}

}

SWEP.ReloadHideBonesFirstPerson = false -- Set to true to enable HideBones even in first person.

-- Come on, fix your damn animations!



SWEP.PoseParameters = {} -- Poseparameters to manage. ["parameter"] = starting value.

-- Use animations to switch between different pose parameters.

-- When an animation is being played that switches between pose parameters, those parameters are all set to 0 for the animation.

-- There are also different default pose parameters:

-- firemode (Changes based on Fire Mode. Don't use this if you have animated firemode switching.)

-- sights (Changes based on sight delta)

-- sprint (Changes based on sprint delta)

-- empty (Changes based on whether a bullet is loaded)

-- ammo (Changes based on the ammo in the clip)





-------------------------- CAMO SYSTEM



SWEP.CustomCamoTexture = nil

SWEP.CustomCamoScale = 1

SWEP.CustomBlendFactor = nil



-------------------------- POSITIONS



SWEP.IronSights = {

    Pos = Vector(-2.92, -2, 1),

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

SWEP.ActivePos = Vector(0, -2, 0)

SWEP.ActiveAng = Angle(0, 0, 0)



-- Position while walking/running (no sprint)

SWEP.MovingPos = Vector(0, 0, 0)

SWEP.MovingAng = Angle(0, 0, 0)



-- Position when crouching

SWEP.CrouchPos = Vector(-2, -2, -2)

SWEP.CrouchAng = Angle(0, 0, -30)



-- Position when sprinting or safe

SWEP.RestPos = Vector(0.532, -6, 0)

SWEP.RestAng = Angle(-4.633, 36.881, 0)



-- Overrides RestPos/Ang but only for sprinting

SWEP.SprintPos = Vector(0, -4, -2)

SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintVerticalOffset = true -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)

SWEP.ReloadNoSprintPos = true -- No sprintpos during reloads



SWEP.NearWallPos = nil

SWEP.NearWallAng = nil



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

-- To get this value:

-- 1. Line up your iron sights

-- 2. Take the X value of IronSights.Pos and put it in the Y value of anchor like this:

-- IronSights.Pos = Vector(-3.165, -5, 1.15)

-- CustomizeRotateAnchor = Vector(0, -3.165, 0)

-- 3. Set CustomizeRotateAnchor.x to around 15-30

-- 4. Set z to about -3

-- 5. Tweak x and z till it feels rights

-- Much more reliable and easy to do than Darsu difficult method

SWEP.CustomizeSnapshotFOV = 90

SWEP.CustomizeSnapshotPos = Vector(0, 0, 0)

SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)

SWEP.CustomizeNoRotate = false



SWEP.BipodPos = Vector(0, 0, 0)

SWEP.BipodAng = Angle(0, 0, 0)



SWEP.PeekPos = Vector(2, 2, -0.5)

SWEP.PeekAng = Angle(0, 0, 8)



SWEP.HeightOverBore = 1



-------------------------- HoldTypes



SWEP.HoldType = "ar2"

SWEP.HoldTypeSprint = "passive"

SWEP.HoldTypeHolstered = nil

SWEP.HoldTypeSights = "ar2"

SWEP.HoldTypeCustomize = "slam"

SWEP.HoldTypeBlindfire = "pistol"

SWEP.HoldTypeNPC = "ar2"



SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!

SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_SMG1 -- Non TPIK

SWEP.AnimDraw = false

SWEP.AnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND



-------------------------- Shields



SWEP.ShieldModel = nil



SWEP.ShieldOffset = Vector(0, 0, 0)

SWEP.ShieldAngle = Angle(0, 0, 0)



SWEP.ShieldBone = "ValveBiped.Bip01_R_Hand"



SWEP.ShieldScale = 1



-------------------------- TTT



-- No free attachments when this gun is purchased

SWEP.TTTNoAttachmentsOnBuy = false



-- Automatically spawn in TTT

SWEP.TTTAutospawn = true



-- Specifically replace a certain weapon in TTT

SWEP.TTTWeaponType = nil



-- The chance this weapon will spawn in TTT

SWEP.TTTWeight = 100



-- Use a different ammo type in TTT

SWEP.TTTAmmoType = nil



-------------------------- ATTACHMENTS



SWEP.StandardPresets = nil -- A table of standard presets, that would be in every player preset menu, undeletable. Just put preset codes in ""

-- {

--     "[Compact]XQAA... regular preset code here",

--     "[Magpul kit]XQAA... regular preset code here",

-- }



SWEP.AttachmentBodygroups = {

    -- ["name"] = {

    --     VM = {

    --         {

    --             ind = 1,

    --             bg = 1

    --         }

    --     },

    --     WM = {

    --         {

    --             ind = 1,

    --             bg = 1

    --         }

    --     },

    -- }

}



-- Activate attachment elements by default.

SWEP.DefaultElements = {}



SWEP.AttachmentElements = {

    --[[]

    ["bg_name"] = {

        Bodygroups = {

            {1, 1}

        },

        AttPosMods = {

            [1] = { -- slot index

                Pos = Vector(),

                Ang = Angle(),

            }

        }

        Models = {

            Model = "",

            Pos = Vector(),

            Ang = Angle(),

            Bone = "",

            BoneMerge = false,

            Skin = 0,

            Bodygroups = "000",

            Scale = 1,

            ScaleVector = Vector(),

        }

        -- Other attachment parameters work here

    }

    ]]

}



-- Use to override attachment table entry data.

SWEP.AttachmentSlotMods = {

    -- ["name"] = {

    --     [1] = {

    --     }

    -- }

}



-- Adjust the stats of specific attachments when applied to this gun

SWEP.AttachmentTableOverrides = {

    -- ["att_name"] = {

    --     Mult_Recoil = 1

    -- }

}



-- The big one

SWEP.Attachments = {
    --[[{
        PrintName = "OPTIC",
        Category = {"optic_picatinny_medium", "optic_picatinny"},
        Bone = "Weapon",
        Pos = Vector(-0.044, 0.616, 1.8),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "MUZZLE",
        Category = "bocw_9_west_muzzle",
        Bone = "Weapon",
        Pos = Vector(0, 23.753, 0.361),
        Ang = Angle(0, -90, 0),
    },--]]
}



-- draw

-- ready

-- holster

-- idle_1, idle_2, idle_3...

-- fire

-- fire_1, fire_2, fire_3...

-- dryfire

-- reload

-- reload_empty

-- trigger Trigger delay

-- untrigger Let go of trigger before fire

-- reload_ubgl

-- reload_start_1, reload_start_2, reload_start_3...: For reloads that require losing the spent shells. For example removing spent shells on a revolver or double barrel shotgun.

-- reload_insert_1, reload_insert_2, reload_insert_3...: Animation that reloads multiple rounds in at once, such as a stripper clip.

-- reload_insert_bullet_1, reload_insert_bullet_2, reload_insert_bullet_3...: Animation that reloads one by one at a time, such as a revolver or double barrel shotguns.

-- reload_finish, reload_finish_1, reload_finish_2...: Animation that finishes the reload based off of how much bullets you insert in your gun. _# prefix is bullets left to full after cancel reload.

-- enter_bipod, exit_bipod

-- enter_inspect, exit_inspect, idle_inspect

-- jam

-- fix

-- bash

-- impact

-- enter_sights, exit_sights, idle_sights

-- enter_sprint, exit_sprint, idle_sprint

-- toggle (F)

-- switchsights (alt+e)



-- pinpull (for grenades)

-- throw

-- toss

-- explodeinhands

-- touchoff (for C4)



-- Suffixes (Must be in this order):

-- _ubgl

-- _primed (Grenade primed)

-- _iron (When sighted)

-- _sights (Alternative to _iron)

-- _blindfire_left

-- _blindfire_right

-- _blindfire

-- _bipod

-- _sprint

-- _walk

-- _empty

-- _glempty

-- _ubgl (again)

-- _uncycled

-- _detonator



-- Randomization:



-- animname, 1_animname, 2_animname: will play one of these at random.

-- for example if you want 3 inspect animations you need

-- ["inspect"]

-- ["1_inspect"]

-- ["2_inspect"]



-- Not necessary; if your sequences are named the same as animations, they will be used automatically.



SWEP.Animations = {

    ["ready"] = {

        Source = "base_ready",

        Mult = 1,

        EventTable = {

            {

                t = 0.5, -- in seconds

                s = "murdered/weapons/m4a1/handling/m4a1_fireselect.wav", -- sound to play

                c = CHAN_ITEM, -- sound channel

            },

            {

                t = 1, -- in seconds

                s = "murdered/weapons/ak74/handling/ak74_boltback.wav", -- sound to play

                c = CHAN_ITEM, -- sound channel

            },

            {

                t = 1.2, -- in seconds

                s = "murdered/weapons/ak74/handling/ak74_boltrelease.wav", -- sound to play

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

        Time = 0.8, -- overrides the duration of the sequence

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

                s = "murdered/weapons/ak74/handling/ak74_magout.wav", -- sound to play

                c = CHAN_ITEM, -- sound channel

            },

            {

                t = 1.8, -- in seconds

                s = "murdered/weapons/ak74/handling/ak74_magin.wav", -- sound to play

                c = CHAN_ITEM, -- sound channel

            },

        },

    },

    ["reload_empty"] = {

        Source = "base_reload_empty",

        Mult = 0.9,

        EventTable = {

            {

                t = 0.5, -- in seconds

                s = "murdered/weapons/ak74/handling/ak74_magout.wav", -- sound to play

                c = CHAN_ITEM, -- sound channel

            },

            {

                t = 2.1, -- in seconds

                s = "murdered/weapons/ak74/handling/ak74_magin.wav", -- sound to play

                c = CHAN_ITEM, -- sound channel

            },

            {

                t = 3.5, -- in seconds

                s = "murdered/weapons/ak74/handling/ak74_boltback.wav", -- sound to play

                c = CHAN_ITEM, -- sound channel

            },

            {

                t = 3.7, -- in seconds

                s = "murdered/weapons/ak74/handling/ak74_boltrelease.wav", -- sound to play

                c = CHAN_ITEM, -- sound channel

            },

        },

    },

    ["draw"] = {

        Source = "base_draw", -- QC sequence source, can be {"table", "of", "strings"} or "string"

        Time = 0.4, -- overrides the duration of the sequence

        Mult = 1, -- multiplies time

        Reverse = false, -- Reverse the animation

        EventTable = {



        },

    }

}



SWEP.SuppressDefaultSuffixes = false -- Animations won't automatically play _iron, _empty, etc. versions of animations

SWEP.SuppressDefaultAnimations = false -- Animations won't automatically generated based on sequences defined in QC

SWEP.SuppressEmptySuffix = false -- _empty animations won't automatically trigger.

SWEP.SuppressSprintSuffix = false -- _sprint animations won't automatically trigger.

SWEP.SuppressDefaultEvents = false -- Animations will not trigger animation events.

SWEP.SuppressCumulativeShoot = false -- fire_1, fire_2, and fire_3 will not automatically trigger.



SWEP.InstantSprintIdle = true  -- Instantly go to idle_sprint instead of playing enter_sprint.

SWEP.InstantSightIdle = false -- Instantly go to idle_sights instead of playing enter_sights.



SWEP.Primary.Automatic = true

SWEP.Primary.DefaultClip = -1



SWEP.Secondary.ClipSize = -1

SWEP.Secondary.DefaultClip = -1

SWEP.Secondary.Automatic = false

SWEP.Secondary.Ammo = "none"



SWEP.DrawCrosshair = true



SWEP.ARC9 = true



SWEP.m_bPlayPickupSound = false



SWEP.PCFs = {}

SWEP.MuzzPCFs = {}



SWEP.ActiveEffects = {}