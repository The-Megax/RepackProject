--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FoulwealdDenWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdDenWatcher_Thrash", 5000, 0)
end

function FoulwealdDenWatcher_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function FoulwealdDenWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdDenWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdDenWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3746, 1, "FoulwealdDenWatcher_OnCombat")
RegisterUnitEvent(3746, 2, "FoulwealdDenWatcher_OnLeaveCombat")
RegisterUnitEvent(3746, 3, "FoulwealdDenWatcher_OnKilledTarget")
RegisterUnitEvent(3746, 4, "FoulwealdDenWatcher_OnDied")