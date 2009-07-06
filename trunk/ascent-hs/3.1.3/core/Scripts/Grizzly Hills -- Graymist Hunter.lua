--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GraymistHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("GraymistHunter_Gore", 10000, 0)
end

function GraymistHunter_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function GraymistHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GraymistHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GraymistHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26592, 1, "GraymistHunter_OnCombat")
RegisterUnitEvent(26592, 2, "GraymistHunter_OnLeaveCombat")
RegisterUnitEvent(26592, 3, "GraymistHunter_OnKilledTarget")
RegisterUnitEvent(26592, 4, "GraymistHunter_OnDied")