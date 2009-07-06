--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThistlefurDenWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurDenWatcher_FrenziedRage", 8000, 0)
end

function ThistlefurDenWatcher_FrenziedRage(pUnit, Event) 
pUnit:CastSpell(3940) 
end

function ThistlefurDenWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurDenWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurDenWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3923, 1, "ThistlefurDenWatcher_OnCombat")
RegisterUnitEvent(3923, 2, "ThistlefurDenWatcher_OnLeaveCombat")
RegisterUnitEvent(3923, 3, "ThistlefurDenWatcher_OnKilledTarget")
RegisterUnitEvent(3923, 4, "ThistlefurDenWatcher_OnDied")