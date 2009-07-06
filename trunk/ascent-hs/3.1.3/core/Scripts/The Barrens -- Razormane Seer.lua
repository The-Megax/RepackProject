--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormaneSeer_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneSeer_HealingWard", 2000, 1)
Unit:RegisterEvent("RazormaneSeer_SearingTotem", 4000, 1)
end

function RazormaneSeer_HealingWard(pUnit, Event) 
pUnit:CastSpell(6274) 
end

function RazormaneSeer_SearingTotem(pUnit, Event) 
pUnit:CastSpell(6363) 
end

function RazormaneSeer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneSeer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneSeer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3458, 1, "RazormaneSeer_OnCombat")
RegisterUnitEvent(3458, 2, "RazormaneSeer_OnLeaveCombat")
RegisterUnitEvent(3458, 3, "RazormaneSeer_OnKilledTarget")
RegisterUnitEvent(3458, 4, "RazormaneSeer_OnDied")