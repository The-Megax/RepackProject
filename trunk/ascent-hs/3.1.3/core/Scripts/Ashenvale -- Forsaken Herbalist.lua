--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ForsakenHerbalist_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenHerbalist_ContagionofRot", 2000, 2)
end

function ForsakenHerbalist_ContagionofRot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7102, pUnit:GetMainTank()) 
end

function ForsakenHerbalist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenHerbalist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenHerbalist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3733, 1, "ForsakenHerbalist_OnCombat")
RegisterUnitEvent(3733, 2, "ForsakenHerbalist_OnLeaveCombat")
RegisterUnitEvent(3733, 3, "ForsakenHerbalist_OnKilledTarget")
RegisterUnitEvent(3733, 4, "ForsakenHerbalist_OnDied")