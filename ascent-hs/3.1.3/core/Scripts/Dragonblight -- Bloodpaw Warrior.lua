--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodpawWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodpawWarrior_Maul", 5000, 0)
end

function BloodpawWarrior_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51875, pUnit:GetMainTank()) 
end

function BloodpawWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodpawWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodpawWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27342, 1, "BloodpawWarrior_OnCombat")
RegisterUnitEvent(27342, 2, "BloodpawWarrior_OnLeaveCombat")
RegisterUnitEvent(27342, 3, "BloodpawWarrior_OnKilledTarget")
RegisterUnitEvent(27342, 4, "BloodpawWarrior_OnDied")