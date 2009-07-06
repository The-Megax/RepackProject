--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VoodooTroll_OnCombat(Unit, Event)
Unit:RegisterEvent("VoodooTroll_LightningShield", 5000, 0)
Unit:RegisterEvent("VoodooTroll_HealingWave", 12000, 0)
end

function VoodooTroll_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function VoodooTroll_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function VoodooTroll_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VoodooTroll_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VoodooTroll_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3206, 1, "VoodooTroll_OnCombat")
RegisterUnitEvent(3206, 2, "VoodooTroll_OnLeaveCombat")
RegisterUnitEvent(3206, 3, "VoodooTroll_OnKilledTarget")
RegisterUnitEvent(3206, 4, "VoodooTroll_OnDied")