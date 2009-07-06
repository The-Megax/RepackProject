--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AncientDrakkariWarmonger_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientDrakkariWarmonger_SunderArmor", 6000, 0)
end

function AncientDrakkariWarmonger_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50370, pUnit:GetMainTank()) 
end

function AncientDrakkariWarmonger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientDrakkariWarmonger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientDrakkariWarmonger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26811, 1, "AncientDrakkariWarmonger_OnCombat")
RegisterUnitEvent(26811, 2, "AncientDrakkariWarmonger_OnLeaveCombat")
RegisterUnitEvent(26811, 3, "AncientDrakkariWarmonger_OnKilledTarget")
RegisterUnitEvent(26811, 4, "AncientDrakkariWarmonger_OnDied")