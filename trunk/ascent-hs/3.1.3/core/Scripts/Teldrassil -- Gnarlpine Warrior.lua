--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GnarlpineWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineWarrior_Strike", 6000, 0)
end

function GnarlpineWarrior_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GnarlpineWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2008, 1, "GnarlpineWarrior_OnCombat")
RegisterUnitEvent(2008, 2, "GnarlpineWarrior_OnLeaveCombat")
RegisterUnitEvent(2008, 3, "GnarlpineWarrior_OnKilledTarget")
RegisterUnitEvent(2008, 4, "GnarlpineWarrior_OnDied")