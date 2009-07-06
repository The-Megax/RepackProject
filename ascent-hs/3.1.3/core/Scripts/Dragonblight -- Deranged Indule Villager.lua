--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DerangedInduleVillager_OnCombat(Unit, Event)
Unit:RegisterEvent("DerangedInduleVillager_DerangedTantrum", 7000, 0)
end

function DerangedInduleVillager_DerangedTantrum(pUnit, Event) 
pUnit:CastSpell(51782) 
end

function DerangedInduleVillager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DerangedInduleVillager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DerangedInduleVillager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26411, 1, "DerangedInduleVillager_OnCombat")
RegisterUnitEvent(26411, 2, "DerangedInduleVillager_OnLeaveCombat")
RegisterUnitEvent(26411, 3, "DerangedInduleVillager_OnKilledTarget")
RegisterUnitEvent(26411, 4, "DerangedInduleVillager_OnDied")