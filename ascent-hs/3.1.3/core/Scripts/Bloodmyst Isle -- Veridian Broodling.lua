--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VeridianBroodling_OnCombat(Unit, Event)
Unit:RegisterEvent("VeridianBroodling_PoisonBolt", 8000, 0)
end

function VeridianBroodling_PoisonBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21067, pUnit:GetMainTank()) 
end

function VeridianBroodling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VeridianBroodling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VeridianBroodling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17589, 1, "VeridianBroodling_OnCombat")
RegisterUnitEvent(17589, 2, "VeridianBroodling_OnLeaveCombat")
RegisterUnitEvent(17589, 3, "VeridianBroodling_OnKilledTarget")
RegisterUnitEvent(17589, 4, "VeridianBroodling_OnDied")