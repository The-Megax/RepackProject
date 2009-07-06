--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OnslaughtScout_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtScout_Sprint", 4000, 1)
end

function OnslaughtScout_Sprint(pUnit, Event) 
pUnit:CastSpell(48594) 
end

function OnslaughtScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27332, 1, "OnslaughtScout_OnCombat")
RegisterUnitEvent(27332, 2, "OnslaughtScout_OnLeaveCombat")
RegisterUnitEvent(27332, 3, "OnslaughtScout_OnKilledTarget")
RegisterUnitEvent(27332, 4, "OnslaughtScout_OnDied")