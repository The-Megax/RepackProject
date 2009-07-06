--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DeepmossCreeper_OnCombat(Unit, Event)
Unit:RegisterEvent("DeepmossCreeper_Poison", 10000, 0)
end

function DeepmossCreeper_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function DeepmossCreeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeepmossCreeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeepmossCreeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4005, 1, "DeepmossCreeper_OnCombat")
RegisterUnitEvent(4005, 2, "DeepmossCreeper_OnLeaveCombat")
RegisterUnitEvent(4005, 3, "DeepmossCreeper_OnKilledTarget")
RegisterUnitEvent(4005, 4, "DeepmossCreeper_OnDied")