--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WindshearGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("WindshearGeomancer_Frostbolt", 8000, 0)
end

function WindshearGeomancer_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function WindshearGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WindshearGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WindshearGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4003, 1, "WindshearGeomancer_OnCombat")
RegisterUnitEvent(4003, 2, "WindshearGeomancer_OnLeaveCombat")
RegisterUnitEvent(4003, 3, "WindshearGeomancer_OnKilledTarget")
RegisterUnitEvent(4003, 4, "WindshearGeomancer_OnDied")