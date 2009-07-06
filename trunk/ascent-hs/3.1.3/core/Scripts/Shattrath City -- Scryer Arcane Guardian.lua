--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Guardian_OnCombat(Unit, Event)
Unit:RegisterEvent("Guardian_Banish", 10000, 0)
end

function Guardian_Banish(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36671, pUnit:GetMainTank()) 
end

function Guardian_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Guardian_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Guardian_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18568, 1, "Guardian_OnCombat")
RegisterUnitEvent(18568, 2, "Guardian_OnLeaveCombat")
RegisterUnitEvent(18568, 3, "Guardian_OnKilledTarget")
RegisterUnitEvent(18568, 4, "Guardian_OnDied")