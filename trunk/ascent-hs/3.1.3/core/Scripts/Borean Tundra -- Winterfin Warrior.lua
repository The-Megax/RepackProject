--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WinterfinWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("WinterfinWarrior_DemoralizingMmmrrrggglll", 8000, 0)
end

function WinterfinWarrior_DemoralizingMmmrrrggglll(pUnit, Event) 
pUnit:CastSpell(50267) 
end

function WinterfinWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WinterfinWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WinterfinWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25217, 1, "WinterfinWarrior_OnCombat")
RegisterUnitEvent(25217, 2, "WinterfinWarrior_OnLeaveCombat")
RegisterUnitEvent(25217, 3, "WinterfinWarrior_OnKilledTarget")
RegisterUnitEvent(25217, 4, "WinterfinWarrior_OnDied")