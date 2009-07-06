--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SunscaleLashtail_OnCombat(Unit, Event)
Unit:RegisterEvent("SunscaleLashtail_Lash", 6000, 0)
end

function SunscaleLashtail_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function SunscaleLashtail_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunscaleLashtail_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunscaleLashtail_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3254, 1, "SunscaleLashtail_OnCombat")
RegisterUnitEvent(3254, 2, "SunscaleLashtail_OnLeaveCombat")
RegisterUnitEvent(3254, 3, "SunscaleLashtail_OnKilledTarget")
RegisterUnitEvent(3254, 4, "SunscaleLashtail_OnDied")