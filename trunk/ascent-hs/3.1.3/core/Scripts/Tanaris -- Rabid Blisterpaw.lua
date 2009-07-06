--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RabidBlisterpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("RabidBlisterpaw_Rabies", 10000, 1)
end

function RabidBlisterpaw_Rabies(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3150, pUnit:GetMainTank()) 
end

function RabidBlisterpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RabidBlisterpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RabidBlisterpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5427, 1, "RabidBlisterpaw_OnCombat")
RegisterUnitEvent(5427, 2, "RabidBlisterpaw_OnLeaveCombat")
RegisterUnitEvent(5427, 3, "RabidBlisterpaw_OnKilledTarget")
RegisterUnitEvent(5427, 4, "RabidBlisterpaw_OnDied")