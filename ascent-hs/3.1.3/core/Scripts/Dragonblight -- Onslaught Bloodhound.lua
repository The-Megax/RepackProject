--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OnslaughtBloodhound_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtBloodhound_Maul", 5000, 0)
end

function OnslaughtBloodhound_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51875, pUnit:GetMainTank()) 
end

function OnslaughtBloodhound_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtBloodhound_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtBloodhound_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27329, 1, "OnslaughtBloodhound_OnCombat")
RegisterUnitEvent(27329, 2, "OnslaughtBloodhound_OnLeaveCombat")
RegisterUnitEvent(27329, 3, "OnslaughtBloodhound_OnKilledTarget")
RegisterUnitEvent(27329, 4, "OnslaughtBloodhound_OnDied")