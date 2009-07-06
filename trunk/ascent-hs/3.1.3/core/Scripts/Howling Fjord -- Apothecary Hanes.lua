--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ApothecaryHanes_OnCombat(Unit, Event)
Unit:RegisterEvent("ApothecaryHanes_HealingPotion", 12000, 0)
end

function ApothecaryHanes_HealingPotion(pUnit, Event) 
pUnit:CastSpell(17534) 
end

function ApothecaryHanes_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ApothecaryHanes_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ApothecaryHanes_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23784, 1, "ApothecaryHanes_OnCombat")
RegisterUnitEvent(23784, 2, "ApothecaryHanes_OnLeaveCombat")
RegisterUnitEvent(23784, 3, "ApothecaryHanes_OnKilledTarget")
RegisterUnitEvent(23784, 4, "ApothecaryHanes_OnDied")