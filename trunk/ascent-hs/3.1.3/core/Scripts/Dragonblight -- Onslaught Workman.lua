--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OnslaughtWorkman_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtWorkman_Chop", 7000, 0)
end

function OnslaughtWorkman_Chop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43410, pUnit:GetMainTank()) 
end

function OnslaughtWorkman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtWorkman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtWorkman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27207, 1, "OnslaughtWorkman_OnCombat")
RegisterUnitEvent(27207, 2, "OnslaughtWorkman_OnLeaveCombat")
RegisterUnitEvent(27207, 3, "OnslaughtWorkman_OnKilledTarget")
RegisterUnitEvent(27207, 4, "OnslaughtWorkman_OnDied")