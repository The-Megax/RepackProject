--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SpitelashSerpentGuard_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashSerpentGuard_FrostShock", 6000, 0)
end

function SpitelashSerpentGuard_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function SpitelashSerpentGuard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashSerpentGuard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashSerpentGuard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6194, 1, "SpitelashSerpentGuard_OnCombat")
RegisterUnitEvent(6194, 2, "SpitelashSerpentGuard_OnLeaveCombat")
RegisterUnitEvent(6194, 3, "SpitelashSerpentGuard_OnKilledTarget")
RegisterUnitEvent(6194, 4, "SpitelashSerpentGuard_OnDied")