--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MutatedTangler_OnCombat(Unit, Event)
Unit:RegisterEvent("MutatedTangler_EntanglingRoots", 10000, 0)
end

function MutatedTangler_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31287, pUnit:GetMainTank()) 
end

function MutatedTangler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MutatedTangler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MutatedTangler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17346, 1, "MutatedTangler_OnCombat")
RegisterUnitEvent(17346, 2, "MutatedTangler_OnLeaveCombat")
RegisterUnitEvent(17346, 3, "MutatedTangler_OnKilledTarget")
RegisterUnitEvent(17346, 4, "MutatedTangler_OnDied")