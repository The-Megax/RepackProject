--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VentureCoDeforester_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoDeforester_Fireball", 8000, 0)
end

function VentureCoDeforester_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function VentureCoDeforester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoDeforester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoDeforester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3991, 1, "VentureCoDeforester_OnCombat")
RegisterUnitEvent(3991, 2, "VentureCoDeforester_OnLeaveCombat")
RegisterUnitEvent(3991, 3, "VentureCoDeforester_OnKilledTarget")
RegisterUnitEvent(3991, 4, "VentureCoDeforester_OnDied")