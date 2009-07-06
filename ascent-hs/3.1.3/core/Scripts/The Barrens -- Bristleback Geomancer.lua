--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BristlebackGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackGeomancer_QuickFlameWard", 11000, 0)
Unit:RegisterEvent("BristlebackGeomancer_Flamestrike", 10000, 0)
Unit:RegisterEvent("BristlebackGeomancer_Fireball", 8000, 0)
end

function BristlebackGeomancer_QuickFlameWard(pUnit, Event) 
pUnit:CastSpell(4979) 
end

function BristlebackGeomancer_Flamestrike(pUnit, Event) 
pUnit:CastSpell(20794) 
end

function BristlebackGeomancer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function BristlebackGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3263, 1, "BristlebackGeomancer_OnCombat")
RegisterUnitEvent(3263, 2, "BristlebackGeomancer_OnLeaveCombat")
RegisterUnitEvent(3263, 3, "BristlebackGeomancer_OnKilledTarget")
RegisterUnitEvent(3263, 4, "BristlebackGeomancer_OnDied")