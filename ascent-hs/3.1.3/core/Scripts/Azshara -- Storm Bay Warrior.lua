--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function StormBayWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("StormBayWarrior_Pummel", 9000, 0)
Unit:RegisterEvent("StormBayWarrior_Strike", 6000, 0)
end

function StormBayWarrior_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function StormBayWarrior_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function StormBayWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormBayWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormBayWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6371, 1, "StormBayWarrior_OnCombat")
RegisterUnitEvent(6371, 2, "StormBayWarrior_OnLeaveCombat")
RegisterUnitEvent(6371, 3, "StormBayWarrior_OnKilledTarget")
RegisterUnitEvent(6371, 4, "StormBayWarrior_OnDied")