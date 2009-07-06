--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SpitelashRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashRaider_FrostShock", 6000, 0)
end

function SpitelashRaider_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function SpitelashRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12204, 1, "SpitelashRaider_OnCombat")
RegisterUnitEvent(12204, 2, "SpitelashRaider_OnLeaveCombat")
RegisterUnitEvent(12204, 3, "SpitelashRaider_OnKilledTarget")
RegisterUnitEvent(12204, 4, "SpitelashRaider_OnDied")