--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HordeDeforester_OnCombat(Unit, Event)
Unit:RegisterEvent("HordeDeforester_SunderArmor", 6000, 0)
end

function HordeDeforester_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11971, pUnit:GetMainTank()) 
end

function HordeDeforester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HordeDeforester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HordeDeforester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11681, 1, "HordeDeforester_OnCombat")
RegisterUnitEvent(11681, 2, "HordeDeforester_OnLeaveCombat")
RegisterUnitEvent(11681, 3, "HordeDeforester_OnKilledTarget")
RegisterUnitEvent(11681, 4, "HordeDeforester_OnDied")