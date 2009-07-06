--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function InfectedWildkin_OnCombat(Unit, Event)
Unit:RegisterEvent("InfectedWildkin_InfectedWound", 10000, 0)
end

function InfectedWildkin_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31282, pUnit:GetMainTank()) 
end

function InfectedWildkin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfectedWildkin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfectedWildkin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17322, 1, "InfectedWildkin_OnCombat")
RegisterUnitEvent(17322, 2, "InfectedWildkin_OnLeaveCombat")
RegisterUnitEvent(17322, 3, "InfectedWildkin_OnKilledTarget")
RegisterUnitEvent(17322, 4, "InfectedWildkin_OnDied")