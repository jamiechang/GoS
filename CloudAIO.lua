-- Version Check 1.6.1 Fix line 77.
-- Fiora
if GetObjectName(GetMyHero()) == "Fiora" then
--Menu
Config = scriptConfig("Fiora", "Fiora")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1550) then
                 
                 -- Fiora Q
                         if Config.Q then
        if GetCastName(myHero, _Q) == "FioraQ" then
        local QPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,400,50,false,true)
            if CanUseSpell(myHero, _Q) == READY and IsInDistance(unit, 400) then
            CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
            end
        end
    end
                     -- Fiora W
   if GetCastName(myHero, _W) == "FioraW" then
            if Config.W then
                local WPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,750,50,false,true)
                 if CanUseSpell(myHero, _W) == READY and IsObjectAlive(unit) and IsInDistance(unit, 750) then
            CastSkillShot(_W,WPred.PredPos.x,WPred.PredPos.y,WPred.PredPos.z)
            end
        end
    end
                 --Fiora E
                 if GetCastName(myHero, _E) == "FioraE" then
            if Config.E then
            if CanUseSpell(myHero, _E) == READY and IsInDistance(unit, 260) then
            CastTargetSpell(myHero,_E)
            end
        end
    end
    -- Cast R
   if GetCastName(myHero, _R) == "FioraR" then
            if Config.R then
                if (GetCurrentHP(unit)/GetMaxHP(unit))<0.4 and
                    CanUseSpell(myHero, _R) == READY and IsObjectAlive(unit) and IsInDistance(unit, 500) then
            CastTargetSpell(unit, _R)
            end
        end
    end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Fiora Loaded</font>"))
end

-- Riven
if GetObjectName(GetMyHero()) == "Riven" then
--Menu
Config = scriptConfig("Riven", "Riven")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1550) then
                 --Riven E
                 if GetCastName(myHero, _E) == "RivenFeint" then
        local EPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,325,50,true,true)
            if Config.E then
            if CanUseSpell(myHero, _E) == READY and EPred.HitChance == 1 then
            CastSkillShot(_E,EPred.PredPos.x,EPred.PredPos.y,EPred.PredPos.z) 
            end
        end
    end
                 -- Riven Q
                         if Config.Q then
        if GetCastName(myHero, _Q) == "RivenTriCleave" then
        local QPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,260,50,false,true)
            if CanUseSpell(myHero, _Q) == READY and IsInDistance(unit, 260) then
            CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z) 
            end
        end
                    AttackUnit(unit)
    end
    -- Riven W
   if GetCastName(myHero, _W) == "RivenMartyr" then
            if Config.W then
                local WPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,125,50,false,true)
                 if CanUseSpell(myHero, _W) == READY and IsObjectAlive(unit) and IsInDistance(unit, 125) then
            CastSkillShot(_W,WPred.PredPos.x,WPred.PredPos.y,WPred.PredPos.z)
            end
        end
    end
    -- Cast R
   if GetCastName(myHero, _R) == "RivenFengShuiEngine" then
            if Config.R then
                if (GetCurrentHP(unit)/GetMaxHP(unit))<0.3 and
                    CanUseSpell(myHero, _R) == READY and IsObjectAlive(unit) and IsInDistance(unit, 900) then
            CastTargetSpell(myHero, _R)
            end
        end
    end
    --Cast R windslash
       if GetCastName(myHero, _R) == "rivenizunablade" then
            if Config.R then
                local RPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,900,50,false,true)
                     if (GetCurrentHP(unit)/GetMaxHP(unit))<0.3 and
                    CanUseSpell(myHero, _R) == READY and IsObjectAlive(unit) and IsInDistance(unit, 900) then
            CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
            end
        end
    end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Riven Loaded</font>"))
end
-- Ziggs
if GetObjectName(GetMyHero()) == "Ziggs" then
--Menu
Config = scriptConfig("Ziggs", "Ziggs")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1550) then
                 -- Ziggs Q

                         if Config.Q then
        if GetCastName(myHero, _Q) == "ZiggsQ" then
        local QPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,1400,50,true,true)
            if CanUseSpell(myHero, _Q) == READY then
            CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
            end
        end
    end
        -- Ziggs E
                 if GetCastName(myHero, _E) == "ZiggsE" then
        local EPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,900,50,true,true)
            if Config.E then
            if CanUseSpell(myHero, _E) == READY and EPred.HitChance == 1 then
            CastSkillShot(_E,EPred.PredPos.x,EPred.PredPos.y,EPred.PredPos.z)
            end
        end
    end
    -- Ziggs W
   if GetCastName(myHero, _W) == "ZiggsW" then
            if Config.W then
                local WPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,5300,50,false,true)
                          if (GetCurrentHP(unit)/GetMaxHP(unit))<0.3 and
                    CanUseSpell(myHero, _W) == READY and IsObjectAlive(unit) and IsInDistance(unit, 1000) then
            CastSkillShot(_W,WPred.PredPos.x,WPred.PredPos.y,RPred.PredPos.z)
            end
        end
    end
-- Ziggs R
   if GetCastName(myHero, _R) == "ZiggsR" then
            if Config.R then
                local RPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,5300,50,false,true)
                     if (GetCurrentHP(unit)/GetMaxHP(unit))<0.4 and
                    CanUseSpell(myHero, _R) == READY and IsObjectAlive(unit) and IsInDistance(unit, 5300) then
            CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
            end
        end
    end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Ziggs Loaded</font>"))
end
-- Gangplank
if GetObjectName(GetMyHero()) == "Gangplank" then
--Menu
Config = scriptConfig("Gangplank", "Gangplank")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
  --Auto heal if under or 30% HP AND ENEMY IS IN 1000 RANGE.
   if GetCastName(myHero, _W) == "GangplankW" then
            if Config.R then
                          if (GetCurrentHP(myHero)/GetMaxHP(myHero))<0.3 and
                    CanUseSpell(myHero, _W) == READY and IsObjectAlive(unit) and IsInDistance(unit, 1000) then
            CastTargetSpell(myHero, _W)
            end
        end
    end
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1550) then
                 -- Gang Q

                         if Config.Q then
        if GetCastName(myHero, _Q) == "GangplankQWrapper" then
if CanUseSpell(myHero, _Q) == READY then
    CastTargetSpell(unit,_Q)
                end
            end
        end
        -- Gangplank E
                 if GetCastName(myHero, _E) == "GangplankE" then
        local EPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,1000,50,false,true)
            if Config.E then
            if CanUseSpell(myHero, _E) == READY and EPred.HitChance == 1 then
            CastSkillShot(_E,EPred.PredPos.x,EPred.PredPos.y,EPred.PredPos.z)
            end
        end
    end
-- Gangplank R
   if GetCastName(myHero, _R) == "GangplankR" then
            if Config.R then
                local RPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,10000,50,false,true)
                     if (GetCurrentHP(unit)/GetMaxHP(unit))<0.2 and
                    CanUseSpell(myHero, _R) == READY and IsObjectAlive(unit) and IsInDistance(unit, 10000) then
            CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
            end
        end
    end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Gangplank Loaded</font>"))
end

-- Irelia
if GetObjectName(GetMyHero()) == "Irelia" then
--Menu
Config = scriptConfig("Irelia", "Irelia")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1550) then
                 -- Irelia Q
                 if Config.Q then
        if GetCastName(myHero, _Q) == "IreliaGatotsu" then
if CanUseSpell(myHero, _Q) == READY then
    CastTargetSpell(unit,_Q)
                end
            end
        end
        -- Irelia E
             if Config.E then
if GetCastName(myHero, _E) == "IreliaEquilibriumStrike" then
    if CanUseSpell(myHero, _E) == READY and IsInDistance(unit, 325) then
    CastTargetSpell(unit,_E)
                end
            end
end
    if Config.W then
        if GetCastName(myHero, _W) == "IreliaHitenStyle" then
if CanUseSpell(myHero, _W) == READY  and IsInDistance(unit, 325) then
    CastTargetSpell(unit,_W)
                end
            end
        end
-- Irelia R
       if Config.R then
        if GetCastName(myHero, _R) == "IreliaTranscendentBlades" then
        local RPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,1000,55,false,true)
if CanUseSpell(myHero, _R) == READY and IsInDistance(unit, 1000) then
     CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
                end
    end
    end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Irelia Loaded</font>"))
end

--Evelynn
if GetObjectName(GetMyHero()) == "Evelynn" then
--Menu
Config = scriptConfig("Evelynn", "Evelynn")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1550) then

-- Evelynn W
    if Config.W then
        if GetCastName(myHero, _W) == "EvelynnW" then
if CanUseSpell(myHero, _W) == READY then
    CastTargetSpell(myHero,_W)
                end
            end
        end
-- Evelynn Q
    if Config.Q then
        if GetCastName(myHero, _Q) == "EvelynnQ" then
if CanUseSpell(myHero, _Q) == READY then
    CastTargetSpell(myHero,_Q)
                end
            end
        end
    -- Evelynn E
   if Config.E then
        if GetCastName(myHero, _E) == "EvelynnE" then
if CanUseSpell(myHero, _E) == READY then
    CastTargetSpell(unit,_E)
                end
    end
end
-- Evelynn R
             if Config.R then
if GetCastName(myHero, _R) == "EvelynnR" then
    local RPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,650,55,false,true)
    if CanUseSpell(myHero, _R) == READY and IsInDistance(unit, 1550) then
    CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
                end
            end
end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Evelynn Loaded</font>"))
end

--Akali
if GetObjectName(GetMyHero()) == "Akali" then
--Menu
Config = scriptConfig("Akali", "Akali")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1550) then
                 if Config.Q then
        if GetCastName(myHero, _Q) == "AkaliMota" then
if CanUseSpell(myHero, _Q) == READY then
    CastTargetSpell(unit,_Q)
                end
            end
        end
             -- Akali E
             if Config.E then
if GetCastName(myHero, _E) == "AkaliShadowSwipe" then
    local EPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,325,55,false,true)
    if CanUseSpell(myHero, _E) == READY and IsInDistance(unit, 325) then
    CastSkillShot(_E,EPred.PredPos.x,EPred.PredPos.y,EPred.PredPos.z)
                end
            end
-- Akali W
    if Config.W then
        if GetCastName(myHero, _W) == "AkaliSmokeBomb" then
if CanUseSpell(myHero, _W) == READY then
    CastTargetSpell(unit,_W)
                end
            end
        end
    -- Akali R
   if Config.R then
        if GetCastName(myHero, _R) == "AkaliShadowDance" then
if CanUseSpell(myHero, _R) == READY then
    CastTargetSpell(unit,_R)
                end
    end
end
end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Akali Loaded</font>"))
end

--Menu
if GetObjectName(GetMyHero()) == "Azir" then
--Azir
Config = scriptConfig("Azir", "Azir")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1550) then

-- Azir W
    if Config.W then
        if GetCastName(myHero, _W) == "AzirW" then
    local WPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,850,55,false,true)
    if CanUseSpell(myHero, _W) == READY and WPred.HitChance == 1 then
    CastSkillShot(_W,WPred.PredPos.x,WPred.PredPos.y,WPred.PredPos.z)
                end
            end
    end
-- Azir Q
    if Config.Q then
        if GetCastName(myHero, _Q) == "AzirQ" then
    local QPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,1500,55,false,true)
    if CanUseSpell(myHero, _Q) == READY and QPred.HitChance == 1 then
    CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
                end
            end
    end
    -- Azir E
    if Config.E then
        if GetCastName(myHero, _E) == "AzirE" then
        local EPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,850,50,false,true)
            if CanUseSpell(myHero, _E) == READY and EPred.HitChance == 1 then
            CastSkillShot(_E,EPred.PredPos.x,EPred.PredPos.y,EPred.PredPos.z)
            end
        end
    end
-- Azir R
             if Config.R then
if GetCastName(myHero, _R) == "AzirR" then
    local RPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,250,55,false,true)
    if CanUseSpell(myHero, _R) == READY and IsInDistance(unit, 1550) then
    CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
                end
            end
end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Azir Loaded</font>"))
end

--Viktor
if GetObjectName(GetMyHero()) == "Viktor" then
--Menu
Config = scriptConfig("Viktor", "Viktor")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1550) then

-- Viktor W
    if Config.W then
        if GetCastName(myHero, _W) == "ViktorGravitonField" then
    local WPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,700,55,false,true)
    if CanUseSpell(myHero, _W) == READY and WPred.HitChance == 1 then
    CastSkillShot(_W,WPred.PredPos.x,WPred.PredPos.y,WPred.PredPos.z)
                end
            end
    end
-- Viktor Q
    if Config.Q then
        if GetCastName(myHero, _Q) == "ViktorPowerTransfer" then
if CanUseSpell(myHero, _Q) == READY then
    CastTargetSpell(unit,_Q)
                end
            end
        end
    -- Viktor E
    local myorigin = GetOrigin(unit)
local mymouse = GetMousePos() 
if Config.E then
        if GetCastName(myHero, _E) == "ViktorDeathRay" then
 local EPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,525,55,false,true)
if CanUseSpell(myHero, _E) == READY then 
    CastSkillShot3(_E,myorigin,mymouse)
    end
end
end
-- Viktor R
             if Config.R then
if GetCastName(myHero, _R) == "ViktorChaosStorm" then
    local RPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,700,55,false,true)
    if CanUseSpell(myHero, _R) == READY and IsInDistance(unit, 1550) then
    CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
                end
            end
end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Viktor Loaded</font>"))
end
-- VelKoz
if GetObjectName(GetMyHero()) == "Velkoz" then
--Menu
Config = scriptConfig("VelKoz", "VelKoz")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1550) then
 
-- Velkoz E
    if Config.E then
        if GetCastName(myHero, _E) == "VelkozE" then
        local EPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,850,50,false,true)
            if CanUseSpell(myHero, _E) == READY and EPred.HitChance == 1 then
            CastSkillShot(_E,EPred.PredPos.x,EPred.PredPos.y,EPred.PredPos.z)
            end
        end
    end

-- Velkoz W
    if Config.W then
        if GetCastName(myHero, _W) == "VelkozW" then
    local WPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,1500,55,false,true)
    if CanUseSpell(myHero, _W) == READY and WPred.HitChance == 1 then
    CastSkillShot(_W,WPred.PredPos.x,WPred.PredPos.y,WPred.PredPos.z)
                end
            end
    end
-- Velkoz Q
    if Config.Q then
        if GetCastName(myHero, _Q) == "VelkozQ" then
    local QPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,1050,55,true,true)
    if CanUseSpell(myHero, _Q) == READY and QPred.HitChance == 1 then
    CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
                end
            end
    end
-- Velkoz R
             if Config.R then
if GetCastName(myHero, _R) == "VelkozR" then
    local RPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,1500,55,false,true)
    if CanUseSpell(myHero, _R) == READY and IsInDistance(unit, 1550) then
    CastSkillShot(_R,RPred.PredPos.x,RPred.PredPos.y,RPred.PredPos.z)
                end
            end
end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Velkoz Loaded</font>"))
end

if GetObjectName(GetMyHero()) == "Syndra" then
--Menu
Config = scriptConfig("Syndra", "Syndra")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
Config.addParam("Stun", "Press to Stun", SCRIPT_PARAM_KEYDOWN, string.byte("T")) --Maxxel logic
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1200) then
 
-- Syndra Q cast
    if GetCastName(myHero, _Q) == "SyndraQ" then
        local QPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,800,50,true,true)
            if Config.Q then
            if CanUseSpell(myHero, _Q) == READY and QPred.HitChance == 1 then
            CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
            end
        end
    end
 
-- Syndra cast W on Minion
    if GetCastName(myHero, _W) == "SyndraW" then
            if Config.W then
            if CanUseSpell(myHero, _W) == READY then
            CastTargetSpell(Obj_AI_Minion, _W)
            end
        end
    end
-- Syndra cast W at Enemy
        if GetCastName(myHero, _W) == "SyndraW" then
        local WPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,925,50,true,true)
            if Config.W then
            if CanUseSpell(myHero, _W) == READY and WPred.HitChance == 1 then
            CastSkillShot(_W,WPred.PredPos.x,WPred.PredPos.y,WPred.PredPos.z)
            end
        end
    end
-- Syndra PUSH
        if GetCastName(myHero, _E) == "SyndraE" then
        local EPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,700,50,true,true)
            if Config.E then
            if CanUseSpell(myHero, _E) == READY and EPred.HitChance == 1 then
            CastSkillShot(_E,EPred.PredPos.x,EPred.PredPos.y,EPred.PredPos.z)
            end
        end
    end
-- Syndra Ultimate
if GetCastName(myHero, _R) == "SyndraR" then
            if Config.R then
        if unit ~= nil then
    if CanUseSpell(myHero, _R) == READY and IsInDistance(unit, 675) then
    CastTargetSpell(unit, _R)
                end
            end
        end
    end
local unit = GetCurrentTarget() --Maxxxel logic
local myHeroPos = GetOrigin(myHero)
DrawCircle(myHeroPos.x,myHeroPos.y,myHeroPos.z,1200,2,0,0xffff0000)
    if Config.Stun then
        if ValidTarget(unit,1200) then
            local timea
            local distanceStun=0
            if timea~=nil and CanUseSpell(myHero, _Q) ~= READY and CanUseSpell(myHero, _E) ~= READY then
                timea=nil
            end
        ---Values---
            local enemyposition = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,1200,50,true,true)
            enemyposx=enemyposition.PredPos.x
            enemyposy=enemyposition.PredPos.y
            enemyposz=enemyposition.PredPos.z
            local TargetPos = Vector(enemyposx,enemyposy,enemyposz)
            if GetDistance(unit)>=700 then
                distanceStun=GetDistance(unit)-700
            end
            if GetDistance(unit)<700 then
                distanceStun=0
            end
            local firePos = TargetPos-(TargetPos-myHeroPos)*(distanceStun/GetDistance(unit)) 
            local dPredict = GetDistance(myHero,firePosPoint)
        ---Values end---
            if CanUseSpell(myHero, _Q) == READY and CanUseSpell(myHero, _E) == READY and timea==nil then
                if dPredict < 1200 then
                    CastSkillShot(_Q,firePos.x,0,firePos.z)
                    timea = GetTickCount()
                end
            end
            if CanUseSpell(myHero, _E) == READY and timea~=GetTickCount() then
                    CastSkillShot(_E,firePos.x,0,firePos.z)
            end
        end
        Move()
    end
    
    function Move()
    local movePos = GenerateMovePos()
    if GetDistance(GetMousePos()) > GetHitBox(myHero) then
        MoveToXYZ(movePos.x, 0, movePos.z)
    end
    end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Syndra Loaded</font>"))
end
-- Ekko
if GetObjectName(GetMyHero()) == "Ekko" then
--Menu
Config = scriptConfig("Ekko", "Ekko")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
    if GetCastName(myHero, _R) == "EkkoR" then
            if Config.R then
                     if (GetCurrentHP(myHero)/GetMaxHP(myHero))<0.2 and
                    CanUseSpell(myHero, _R) == READY and IsObjectAlive(myHero) and IsInDistance(unit, 1000) then
            CastTargetSpell(myHero,_R)
            end
        end
    end
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1200) then
 
-- Q cast
        if GetCastName(myHero, _Q) == "EkkoQ" then
                local QPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,1075,50,true,true)
                        if Config.Q then
                        if CanUseSpell(myHero, _Q) == READY and QPred.HitChance == 1 then
                        CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
                        end
                end
        end
-- W Cast
    if GetCastName(myHero, _W) == "EkkoW" then
        local WPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,1600,50,false,true)
            if Config.W then
            if CanUseSpell(myHero, _W) == READY and WPred.HitChance == 1 then
            CastSkillShot(_W,WPred.PredPos.x,WPred.PredPos.y,WPred.PredPos.z)
            end
        end
    end
-- E Cast Will cast E and if im correct then GoS will click champ and Ekko will blink Cast = 325 range Blink= 425
    if GetCastName(myHero, _E) == "EkkoE" then
        local EPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,750,50,false,true)
            if Config.E then
            if CanUseSpell(myHero, _E) == READY and EPred.HitChance == 1 then
            CastSkillShot(_E,EPred.PredPos.x,EPred.PredPos.y,EPred.PredPos.z)
            end
        end
    end
-- R Cast Disabled till i manage how to Use R when low --THANKS SNOWBALL
    if GetCastName(myHero, _R) == "EkkoR" then
            if Config.R then
            CastTargetSpell(myHero,_R)
            end
        end
    end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Ekko Loaded</font>"))
end
--Nidalee
if GetObjectName(GetMyHero()) == "Nidalee" then
--Menu
Config = scriptConfig("Nidalee", "Nidalee")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
Config.addParam("Q2", "Use Q2", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W2", "Use W2", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E2", "Use E2", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
-- Nidalee human heal --THANKS SNOWBALL
            if GetCastName(myHero, _E) == "PrimalSurge" then
        if Config.E then
                     if (GetCurrentHP(myHero)/GetMaxHP(myHero))<0.2 and
                    CanUseSpell(myHero, _E) == READY and IsObjectAlive(myHero) then
            CastTargetSpell(myHero,_E)
        end
    end
end
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1500) then
 
-- Nidalee Human Trap
    if GetCastName(myHero, _W) == "Bushwhack" then
        local WPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,900,50,true,true)
            if Config.W then
            if CanUseSpell(myHero, _W) == READY and WPred.HitChance == 1 then
            CastSkillShot(_W,WPred.PredPos.x,WPred.PredPos.y,WPred.PredPos.z)
            end
        end
    end
-- Nidalee human spear
    if GetCastName(myHero, _Q) == "JavelinToss"then
    -- GetPredictionForPlayer(startPosition, targetUnit, targetUnitMoveSpeed, spellTravelSpeed, spellDelay, spellRange, spellWidth, collision, addHitBox)
    local QPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1600,250,1500,55,true,true)
    if Config.Q then
    if CanUseSpell(myHero, _Q) == READY and QPred.HitChance == 1 then
    CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
                end
            end
    end
-- Tansform to cougar
if GetCastName(myHero, _R) == "AspectOfTheCougar" then
            if Config.R then
        if unit ~= nil then
    if CanUseSpell(myHero, _R) == READY and CanUseSpell(myHero, _W) == READY and CanUseSpell(myHero, _Q) ~= READY and IsInDistance(unit, 750) and GotBuff(unit, "Hunted") then
    CastTargetSpell(myHero, _R)
                end
            end
        end
    end
-- Cougar attack Q
            if GetCastName(myHero, _Q) == "Takedown" then
        if Config.Q2 then
    if CanUseSpell(myHero, _Q) == READY and IsInDistance(unit, 475) then
    CastTargetSpell(unit, _Q)
    end
        end
    end
    -- Cougar pounce W
            if GetCastName(myHero, _W) == "Pounce" then
        if Config.W2 then
    if CanUseSpell(myHero, _W) == READY and IsInDistance(unit, 375) then
    CastTargetSpell(unit, _W)
            end
        end
    end
    -- E cast in cougar form
            if GetCastName(myHero, _E) == "Swipe" then
        if Config.E2 then
    if CanUseSpell(myHero, _E) == READY and IsInDistance(unit, 300) then
    CastTargetSpell(unit, _E)
            end
        end
    end
-- Transform back
    if GetCastName(myHero, _R) == "AspectOfTheCougar" then
        if Config.R then
            if unit ~= nil then
        if CanUseSpell(myHero, _R) == READY and CanUseSpell(myHero, _W) ~= READY and CanUseSpell(myHero, _Q) ~= READY then
        CastSpell(_R)
                end
            end
                end
        end
 
        end
            end
    end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Nidalee Loaded</font>"))
 end
-- Graves
if GetObjectName(GetMyHero()) == "Graves" then
--Menu
Config = scriptConfig("Graves", "Graves")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
Config.addParam("R", "Use R", SCRIPT_PARAM_ONOFF, true)
--Start
OnLoop(function(myHero)
AutoIgnite()
if IWalkConfig.Combo then
local unit = GetCurrentTarget()
if ValidTarget(unit, 1200) then
 
-- Q cast
        if GetCastName(myHero, _Q) == "GravesClusterShot" then
                local QPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,900,50,false,true)
                        if Config.Q then
                        if CanUseSpell(myHero, _Q) == READY and QPred.HitChance == 1 then
                        CastSkillShot(_Q,QPred.PredPos.x,QPred.PredPos.y,QPred.PredPos.z)
                        end
                end
        end
-- W Cast
    if GetCastName(myHero, _W) == "GravesSmokeGrenade" then
        local WPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,1600,50,false,true)
            if Config.W then
            if CanUseSpell(myHero, _W) == READY and WPred.HitChance == 1 then
            CastSkillShot(_W,WPred.PredPos.x,WPred.PredPos.y,WPred.PredPos.z)
            end
        end
    end
-- E Cast 
    if GetCastName(myHero, _E) == "GravesMove" then
            if Config.E then
        CastSkillShot(_E, GetMousePos().x, GetMousePos().y, GetMousePos().z)
            end
        end
-- R Cast 
    if GetCastName(myHero, _R) == "GravesChargedShot" then
        local RPred = GetPredictionForPlayer(GetMyHeroPos(),unit,GetMoveSpeed(unit),1700,250,1000,50,true,true)
                        if CanUseSpell(myHero_R) == READY and RPred.HitChance == 1 and IsInDistance(target, GetCastRange(myHero,_R)) and Config.R and CalcDamage(myHero, target, (150*GetCastLevel(myHero,_R)+100+1.5*GetBonusDmg(myHero)), 0) > GetCurrentHP(target) then
        CastSkillShot(_R,pred.PredPos.x,pred.PredPos.y,pred.PredPos.z)
        end
    end
end
end
end)
PrintChat(string.format("<font color='#1244EA'>[CloudAIO]</font> <font color='#FFFFFF'>Graves Loaded</font>"))
end
