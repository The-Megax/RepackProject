--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NerubarWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarWarrior_Rush", 8000, 0)
end

function NerubarWarrior_Rush(pUnit, Event) 
pUnit:CastSpell(50347) 
end

function NerubarWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25619, 1, "NerubarWarrior_OnCombat")
RegisterUnitEvent(25619, 2, "NerubarWarrior_OnLeaveCombat")
RegisterUnitEvent(25619, 3, "NerubarWarrior_OnKilledTarget")
RegisterUnitEvent(25619, 4, "NerubarWarrior_OnDied")