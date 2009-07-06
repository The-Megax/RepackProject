--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormaneMystic_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneMystic_HealingWave", 12000, 0)
Unit:RegisterEvent("RazormaneMystic_LightningShield", 3000, 0)
end

function RazormaneMystic_HealingWave(pUnit, Event) 
pUnit:CastSpell(547) 
end

function RazormaneMystic_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function RazormaneMystic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneMystic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneMystic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3271, 1, "RazormaneMystic_OnCombat")
RegisterUnitEvent(3271, 2, "RazormaneMystic_OnLeaveCombat")
RegisterUnitEvent(3271, 3, "RazormaneMystic_OnKilledTarget")
RegisterUnitEvent(3271, 4, "RazormaneMystic_OnDied")