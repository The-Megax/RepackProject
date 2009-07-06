--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TimbermawDenWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawDenWatcher_BattleShout", 5000, 0)
end

function TimbermawDenWatcher_BattleShout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function TimbermawDenWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawDenWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawDenWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6187, 1, "TimbermawDenWatcher_OnCombat")
RegisterUnitEvent(6187, 2, "TimbermawDenWatcher_OnLeaveCombat")
RegisterUnitEvent(6187, 3, "TimbermawDenWatcher_OnKilledTarget")
RegisterUnitEvent(6187, 4, "TimbermawDenWatcher_OnDied")