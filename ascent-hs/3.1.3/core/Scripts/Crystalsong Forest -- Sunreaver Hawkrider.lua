--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SunreaverHawkrider_OnCombat(Unit, Event)
Unit:RegisterEvent("SunreaverHawkrider_Shoot", 6000, 0)
end

function SunreaverHawkrider_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SunreaverHawkrider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunreaverHawkrider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunreaverHawkrider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30265, 1, "SunreaverHawkrider_OnCombat")
RegisterUnitEvent(30265, 2, "SunreaverHawkrider_OnLeaveCombat")
RegisterUnitEvent(30265, 3, "SunreaverHawkrider_OnKilledTarget")
RegisterUnitEvent(30265, 4, "SunreaverHawkrider_OnDied")