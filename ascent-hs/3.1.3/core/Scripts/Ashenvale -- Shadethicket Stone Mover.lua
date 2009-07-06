--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ShadethicketStoneMover_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketStoneMover_StrengthofStone", 10000, 0)
end

function ShadethicketStoneMover_StrengthofStone(pUnit, Event) 
pUnit:CastSpell(6864) 
end

function ShadethicketStoneMover_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketStoneMover_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketStoneMover_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3782, 1, "ShadethicketStoneMover_OnCombat")
RegisterUnitEvent(3782, 2, "ShadethicketStoneMover_OnLeaveCombat")
RegisterUnitEvent(3782, 3, "ShadethicketStoneMover_OnKilledTarget")
RegisterUnitEvent(3782, 4, "ShadethicketStoneMover_OnDied")