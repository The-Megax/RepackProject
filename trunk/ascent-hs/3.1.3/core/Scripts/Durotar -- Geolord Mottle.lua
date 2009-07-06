--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GeolordMottle_OnCombat(Unit, Event)
Unit:RegisterEvent("GeolordMottle_LightningShield", 5000, 0)
Unit:RegisterEvent("GeolordMottle_HealingWave", 12000, 0)
end

function GeolordMottle_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function GeolordMottle_HealingWave(pUnit, Event) 
pUnit:CastSpell(547) 
end

function GeolordMottle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeolordMottle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeolordMottle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5826, 1, "GeolordMottle_OnCombat")
RegisterUnitEvent(5826, 2, "GeolordMottle_OnLeaveCombat")
RegisterUnitEvent(5826, 3, "GeolordMottle_OnKilledTarget")
RegisterUnitEvent(5826, 4, "GeolordMottle_OnDied")