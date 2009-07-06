--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CliffWalker_OnCombat(Unit, Event)
Unit:RegisterEvent("CliffWalker_WarStomp", 8000, 0)
end

function CliffWalker_WarStomp(pUnit, Event) 
pUnit:CastSpell(11876) 
end

function CliffWalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CliffWalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CliffWalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6148, 1, "CliffWalker_OnCombat")
RegisterUnitEvent(6148, 2, "CliffWalker_OnLeaveCombat")
RegisterUnitEvent(6148, 3, "CliffWalker_OnKilledTarget")
RegisterUnitEvent(6148, 4, "CliffWalker_OnDied")