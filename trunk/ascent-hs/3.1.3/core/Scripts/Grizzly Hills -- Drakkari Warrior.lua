--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DrakkariWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariWarrior_WarriorsWill", 4000, 1)
end

function DrakkariWarrior_WarriorsWill(pUnit, Event) 
pUnit:CastSpell(52309) 
end

function DrakkariWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26425, 1, "DrakkariWarrior_OnCombat")
RegisterUnitEvent(26425, 2, "DrakkariWarrior_OnLeaveCombat")
RegisterUnitEvent(26425, 3, "DrakkariWarrior_OnKilledTarget")
RegisterUnitEvent(26425, 4, "DrakkariWarrior_OnDied")