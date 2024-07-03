AddCSLuaFile()

ENT.Base = "base_anim"
ENT.PrintName = "Weapon" 
ENT.Category = "BloodShed"
ENT.Spawnable = true

local DataTable = {
    ["Glock"] = {
        model = "models/weapons/w_pist_p228.mdl",
        offsetpos = Vector(-1,3,-2),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["Seven"] = {
        model = "models/weapons/w_pist_fiveseven.mdl",
        offsetpos = Vector(-1,3,-2),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["Deagle"] = {
        model = "models/weapons/w_357.mdl",
        offsetpos = Vector(-1,3,2),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["P228"] = {
        model = "models/weapons/w_pist_p228.mdl",
        offsetpos = Vector(-1,3,-2),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["USP"] = {
        model = "models/weapons/w_pist_usp.mdl",
        offsetpos = Vector(-1,3,-2),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["Elite"] = {
        model = "models/weapons/w_pist_elite_single.mdl",
        offsetpos = Vector(-1,3,-2),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["USPs"] = {
        model = "models/weapons/w_pist_usp_silencer.mdl",
        offsetpos = Vector(-1,3,-2),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["MAC"] = {
        model = "models/weapons/w_smg_mac10.mdl",
        offsetpos = Vector(-1,3,-2),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = true,
    },


    ["AK47"] = {
        model = "models/weapons/w_rif_ak47.mdl",
        offsetpos = Vector(-1,12,-3),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["M4A1"] = {
        model = "models/weapons/w_rif_m4a1.mdl",
        offsetpos = Vector(-1,12,-3),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["MP5"] = {
        model = "models/weapons/w_smg_mp5.mdl",
        offsetpos = Vector(-1,7,-3),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["M3"] = {
        model = "models/weapons/w_shot_m3super90.mdl",
        offsetpos = Vector(-1,12,-3),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
        extradelay = 0.7,
    },
    ["AWP"] = {
        model = "models/weapons/w_snip_awp.mdl",
        offsetpos = Vector(-1,12,-3),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
        extradelay = 1.4,
    },
    ["Scout"] = {
        model = "models/weapons/w_snip_scout.mdl",
        offsetpos = Vector(-1,12,-3),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },

    ------------------

    ["vertec"] = {
        model = "models/weapons/tacint/w_vertec.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["m1911"] = {
        model = "models/weapons/tacint_extras/w_m1911.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["glock"] = {
        model = "models/weapons/tacint_extras/w_glock_new.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["hk45c"] = {
        model = "models/weapons/tacint_extras/w_hk45c.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["p2000"] = {
        model = "models/weapons/tacint/w_p2000.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["usp"] = {
        model = "models/weapons/tacint_extras/w_usp.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["gsr1911"] = {
        model = "models/weapons/tacint/w_gsr1911.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["p250"] = {
        model = "models/weapons/tacint/w_p250.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["uzi"] = {
        model = "models/weapons/tacint/w_uzi.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = true,
    },
    ["mac10"] = {
        model = "models/weapons/tacint_extras/w_mac10.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = true,
    },
    ["skorpion"] = {
        model = "models/weapons/tacint/w_skorpion.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = true,
    },
    ["sphinx"] = {
        model = "models/weapons/tacint/w_sphinx.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = true,
    },
    ["xd45"] = {
        model = "models/weapons/tacint/w_xd45.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = true,
    },
    ["mr96"] = {
        model = "models/weapons/tacint/w_mr96.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = false,
        automatic = false,
    },
    ["mp9"] = {
        model = "models/weapons/tacint_extras/w_mp9.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["p90"] = {
        model = "models/weapons/tacint/w_p90.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["mp5"] = {
        model = "models/weapons/tacint/w_mp5.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["mp7"] = {
        model = "models/weapons/tacint/w_mp7.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["ump45"] = {
        model = "models/weapons/tacint_extras/w_ump45.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["pdw"] = {
        model = "models/weapons/tacint/w_pdw.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["superv"] = {
        model = "models/weapons/tacint/w_superv.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["ak74"] = {
        model = "models/weapons/tacint_extras/w_ak47.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["amd65"] = {
        model = "models/weapons/tacint/w_amd65.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["m4a1"] = {
        model = "models/weapons/tacint_extras/w_m4a1.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["k1a"] = {
        model = "models/weapons/tacint/w_k1a.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["m4"] = {
        model = "models/weapons/tacint/w_m4.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["ak47"] = {
        model = "models/weapons/tacint/w_ak47.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["g36"] = {
        model = "models/weapons/tacint/w_g36k.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["sg551"] = {
        model = "models/weapons/tacint/w_sg551.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["aug"] = {
        model = "models/weapons/tacint/w_aug.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["mg4"] = {
        model = "models/weapons/tacint/w_mg4.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = true,
    },
    ["m4star10"] = {
        model = "models/weapons/tacint/w_m4star10.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["fp6"] = {
        model = "models/weapons/tacint/w_fp6.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["ks23"] = {
        model = "models/weapons/tacint/w_ks23.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["bekas"] = {
        model = "models/weapons/tacint/w_bekas.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["tgs12"] = {
        model = "models/weapons/tacint/w_tgs12.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["p90c"] = {
        model = "models/weapons/tacint/w_p90.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["mp5c"] = {
        model = "models/weapons/tacint/w_mp5.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["m1"] = {
        model = "models/weapons/tacint/w_m1.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["dsa58"] = {
        model = "models/weapons/tacint/w_dsa58.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["hk417"] = {
        model = "models/weapons/tacint/w_hk417.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["uratio"] = {
        model = "models/weapons/tacint/w_m14.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["spr"] = {
        model = "models/weapons/tacint/w_spr.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["as50"] = {
        model = "models/weapons/tacint/w_as50.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
    ["hecate"] = {
        model = "models/weapons/tacint_extras/w_hecate.mdl",
        offsetpos = Vector(-1,3,1),
        offsetang = Angle(0,0,180),
        twohand = true,
        automatic = false,
    },
}

if SERVER then
    function ENT:ConnectHands(ent, wep,isFirstTime) 
        local ow = ent.Owner
        if (!IsValid(ow)) then // Ужасный фикс
            if (isFirstTime) then
                timer.Simple(0.1,function()
                    if !IsValid(self) then return end
                    self:ConnectHands(ent,wep,false)
                end)
            else
                print("OWNER ISNT VALID",wep,ent)
                self:Remove()
                return
            end
        end
        local eang = ent.Owner:EyeAngles()
        local bonerh1 = ent:GetPhysicsObjectNum(ent:TranslateBoneToPhysBone(ent:LookupBone("ValveBiped.Bip01_R_Hand")))
        local bonelh1 = ent:GetPhysicsObjectNum(ent:TranslateBoneToPhysBone(ent:LookupBone("ValveBiped.Bip01_L_Hand")))

        local angle = ent.Owner:GetAimVector():Angle() + Angle(0, 0, 0)
        bonelh1:SetAngles(angle)
        angle = ent.Owner:GetAimVector():Angle() + Angle(0, 0, 180)
        bonerh1:SetAngles(angle)

        ---------------------

        local boner = ent:GetPhysicsObjectNum(ent:TranslateBoneToPhysBone(ent:LookupBone("ValveBiped.Bip01_R_Hand")))
        local pos, ang = boner:GetPos(), boner:GetAngles()

        ang = ang+self.data.offsetang
        boner:SetPos(pos)
        ang:RotateAroundAxis(ang:Right(), self.data.offsetpos.x)
        ang:RotateAroundAxis(ang:Up(), self.data.offsetpos.y)
        ang:RotateAroundAxis(ang:Forward(), self.data.offsetpos.z)
        pos = pos + self.data.offsetpos.x * ang:Right()
        pos = pos + self.data.offsetpos.y * ang:Forward()
        pos = pos + self.data.offsetpos.z * ang:Up()
    
        self:SetPos(pos)
        self:SetAngles(ang)

        constraint.Weld(self, ent, 0, ent:TranslateBoneToPhysBone(ent:LookupBone("ValveBiped.Bip01_R_Hand")), 0, true, false)
        if self.data.twohand then
            local vec1 = ent:GetPhysicsObjectNum(ent:TranslateBoneToPhysBone(ent:LookupBone( "ValveBiped.Bip01_R_Hand" ))):GetPos()
            local vec22 = Vector(0,0,0)
            vec22:Set(Vector(10,-3,0))
            vec22:Rotate(ent:GetPhysicsObjectNum(ent:TranslateBoneToPhysBone(ent:LookupBone( "ValveBiped.Bip01_R_Hand" ))):GetAngles())
            ent:GetPhysicsObjectNum( ent:TranslateBoneToPhysBone(ent:LookupBone( "ValveBiped.Bip01_L_Hand" )) ):SetPos(vec1+vec22)
            ent:GetPhysicsObjectNum( ent:TranslateBoneToPhysBone(ent:LookupBone( "ValveBiped.Bip01_L_Hand" )) ):SetAngles(ent:GetPhysicsObjectNum( 7 ):GetAngles()-Angle(0,0,180))
            if !IsValid(ent.WepCons2) then
                local cons2 = constraint.Weld(self,ent,0,ent:TranslateBoneToPhysBone(ent:LookupBone( "ValveBiped.Bip01_L_Hand" )),0,true)
                if IsValid(cons2) then
                    ent.WepCons2 = cons2
                end
            end
        end
    end

    function ENT:Initialize()
        if not self.type then
            self.type = "Glock"
        end
        self.data = DataTable[self.type]
        self:SetModel(self.data.model)
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self.twohand = self.data.twohand
        self.clip = 0
        self.shooted = false
        self.shootedtime = CurTime()
        local phys = self:GetPhysicsObject()
        phys:SetMass(1)

        local ent, wep = self.Owner, self.Weapon
        if !IsValid(ent) or !IsValid(wep) or !istable(self.data) then
            self:Remove()
        else
            self:ConnectHands(ent, wep)

            ent:DeleteOnRemove(self)

            self.clip = wep:Clip1()
            self.shootsound = wep.ShootSound
        end
    end

    function ENT:Think()
        local ent, wep = self.Owner, self.Weapon
        if !IsValid(ent) or !IsValid(wep) or IsValid(ent.Owner) and !ent.Owner:HasWeapon(wep:GetClass()) then
            self:Remove()
        else
            if ent:GetManipulateBoneScale(ent:LookupBone("ValveBiped.Bip01_R_Hand")):Length() < 1 then
                ent.Weapon = nil 
                self:Remove()
                return
            else
                local bone1 = ent:GetPhysicsObjectNum(ent:TranslateBoneToPhysBone(ent:LookupBone("ValveBiped.Bip01_R_Hand")))
                if IsValid(self:GetPhysicsObject()) then
                    self:GetPhysicsObject():SetVelocity(bone1:GetVelocity())
                end
            end
        end
    end

    function ENT:Reload()
        local rag, wep = self.Owner, self.Weapon
        if IsValid(rag) and IsValid(wep) and wep:Clip1() < wep:GetMaxClip1() and rag.Owner:GetAmmoCount(wep:GetPrimaryAmmoType()) > 0 and self.shootedtime < CurTime() then
            local ent = rag.Owner

            local maxclip = wep:GetMaxClip1()
            local clip = wep:Clip1()
            local ammo = ent:GetAmmoCount(wep:GetPrimaryAmmoType())
            local needed = maxclip - clip
            local toload = math.min(ammo, needed)

            wep:SetClip1(clip + toload)
            ent:RemoveAmmo(toload, wep:GetPrimaryAmmoType())

            self.shootedtime = CurTime()+2
            local count = 0
            --[[local tab = wep.Animations["reload"]
            if istable(tab) and istable(tab.EventTable) then
                for k, v in pairs(tab.EventTable) do
                    count = count + 1
                    timer.Simple(v.t, function()
                        if !IsValid(ent) or !IsValid(self) then return end
                        rag:EmitSound(v.s, 60)
                        rag:FireHand(true)
                    end)
                    self.shootedtime = CurTime()+v.t+1
                end
            end]]--
            if count == 0 then
                local tab = {
                    {
                        t = 0.3,
                        s = "murdered/weapons/m9/handling/m9_magout.wav",
                    },
                    {
                        t = 1.3,
                        s = "murdered/weapons/m9/handling/m9_magin.wav",
                    },
                    {
                        t = 1.8,
                        s = "murdered/weapons/m9/handling/m9_maghit.wav",
                    },
                }
                for k, v in pairs(tab) do
                    timer.Simple(v.t, function()
                        if !IsValid(ent) or !IsValid(self) then return end
                        rag:EmitSound(v.s, 60)
                        rag:FireHand(true)
                    end)
                    self.shootedtime = CurTime()+v.t+1
                end
            end
        end
    end
    
    function ENT:Shoot(bool)
        local ent, wep = self.Owner, self.Weapon
        if bool then
            if wep:Clip1() > 0 then
                if (self.shootedtime > CurTime() or !self.data.automatic and self.shooted) then return end
                local attid, atthas = getMuzzle(self)
                if (!atthas) then return end
                local att = self:GetAttachment(attid)
                local spr = wep.Spread
                if wep.Num > 1 then
                    spr = spr/2
                end
                local maxdmg = wep.Damage_Max or wep.DamageMax
                if (!maxdmg) then return end
                local data = {
                    Attacker = ent,
                    Damage = maxdmg*2,
                    Dir = att.Ang:Forward(),
                    Src = att.Pos-att.Ang:Forward()*4,
                    Force = 1,
                    Tracer = 1,
                    AmmoType = wep.Ammo,
                    Num = wep.Num,
                    Spread = Vector( 1*spr, 1*spr, 1*spr ),
                    IgnoreEntity = ent,
                }
                self:FireBullets(data)
                wep:SetClip1(wep:Clip1()-1)
                self.shooted = true
                self.shootedtime = CurTime()+(60/wep.RPM)+(self.data.extradelay or 0)
                local soundshoot = wep.Sound_Shoot or wep.ShootSound
                ent:EmitSound(isstring(soundshoot) and soundshoot or istable(soundshoot) and table.Random(soundshoot), wep.Vol_Shoot or wep.ShootVolume, math.random(100-(wep.ShootPitchVariance or wep.ShootPitchVariation),100+(wep.ShootPitchVariance or wep.ShootPitchVariation)), 1, CHAN_WEAPON)
                ent:FireHand()
                if wep:Clip1() == 0 then
                    self.shooted = false
                end

                local effectdata = EffectData()
                effectdata:SetOrigin(att.Pos)
                effectdata:SetAngles(att.Ang)
                effectdata:SetScale( 1 )
                util.Effect("MuzzleEffect", effectdata)
            else
                if self.shooted then return end

                self.shooted = true
                self.shootedtime = CurTime()+(60/wep.RPM)
                ent:EmitSound("weapons/pistol/pistol_empty.wav", 60)
            end
        else
            self.shooted = false
        end
    end
else

end