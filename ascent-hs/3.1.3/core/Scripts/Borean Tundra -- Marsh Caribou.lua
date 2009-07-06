--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MarshCaribou_OnCombat(Unit, Event)
Unit:RegisterEvent("MarshCaribou_Gore", 8000, 0)
end

function MarshCaribou_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function MarshCaribou_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarshCaribou_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarshCaribou_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25680, 1, "MarshCaribou_OnCombat")
RegisterUnitEvent(25680, 2, "MarshCaribou_OnLeaveCombat")
RegisterUnitEvent(25680, 3, "MarshCaribou_OnKilledTarget")
RegisterUnitEvent(25680, 4, "MarshCaribou_OnDied")