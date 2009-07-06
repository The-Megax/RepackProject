--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormaneBattleguard_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneBattleguard_ImprovedBlocking", 8000, 0)
end

function RazormaneBattleguard_ImprovedBlocking(pUnit, Event) 
pUnit:CastSpell(3248) 
end

function RazormaneBattleguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneBattleguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneBattleguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3114, 1, "RazormaneBattleguard_OnCombat")
RegisterUnitEvent(3114, 2, "RazormaneBattleguard_OnLeaveCombat")
RegisterUnitEvent(3114, 3, "RazormaneBattleguard_OnKilledTarget")
RegisterUnitEvent(3114, 4, "RazormaneBattleguard_OnDied")