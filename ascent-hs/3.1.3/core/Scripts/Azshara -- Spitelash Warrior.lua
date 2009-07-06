--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SpitelashWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashWarrior_Disarm", 8000, 0)
end

function SpitelashWarrior_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function SpitelashWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6190, 1, "SpitelashWarrior_OnCombat")
RegisterUnitEvent(6190, 2, "SpitelashWarrior_OnLeaveCombat")
RegisterUnitEvent(6190, 3, "SpitelashWarrior_OnKilledTarget")
RegisterUnitEvent(6190, 4, "SpitelashWarrior_OnDied")