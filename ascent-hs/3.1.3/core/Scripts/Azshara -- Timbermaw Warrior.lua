--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TimbermawWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawWarrior_Rend", 10000, 0)
Unit:RegisterEvent("TimbermawWarrior_Strike", 6000, 0)
end

function TimbermawWarrior_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function TimbermawWarrior_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function TimbermawWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6185, 1, "TimbermawWarrior_OnCombat")
RegisterUnitEvent(6185, 2, "TimbermawWarrior_OnLeaveCombat")
RegisterUnitEvent(6185, 3, "TimbermawWarrior_OnKilledTarget")
RegisterUnitEvent(6185, 4, "TimbermawWarrior_OnDied")