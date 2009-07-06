--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BristlelimbWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlelimbWarrior_Strike", 6000, 0)
end

function BristlelimbWarrior_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function BristlelimbWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlelimbWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlelimbWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17321, 1, "BristlelimbWarrior_OnCombat")
RegisterUnitEvent(17321, 2, "BristlelimbWarrior_OnLeaveCombat")
RegisterUnitEvent(17321, 3, "BristlelimbWarrior_OnKilledTarget")
RegisterUnitEvent(17321, 4, "BristlelimbWarrior_OnDied")