--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function InjuredWarsongEngineer_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredWarsongEngineer_GoblinDragonGun", 8000, 0)
Unit:RegisterEvent("InjuredWarsongEngineer_SuperShrinkRay", 10000, 0)
end

function InjuredWarsongEngineer_GoblinDragonGun(pUnit, Event) 
pUnit:CastSpell(44273) 
end

function InjuredWarsongEngineer_SuperShrinkRay(pUnit, Event) 
pUnit:CastSpell(22742) 
end

function InjuredWarsongEngineer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredWarsongEngineer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredWarsongEngineer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27110, 1, "InjuredWarsongEngineer_OnCombat")
RegisterUnitEvent(27110, 2, "InjuredWarsongEngineer_OnLeaveCombat")
RegisterUnitEvent(27110, 3, "InjuredWarsongEngineer_OnKilledTarget")
RegisterUnitEvent(27110, 4, "InjuredWarsongEngineer_OnDied")