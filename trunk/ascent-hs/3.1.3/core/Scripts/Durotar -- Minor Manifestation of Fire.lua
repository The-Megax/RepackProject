--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MinorManifestationofFire_OnCombat(Unit, Event)
Unit:RegisterEvent("MinorManifestationofFire_FireShield", 1000, 1)
Unit:RegisterEvent("MinorManifestationofFire_FlameShock", 8000, 0)
end

function MinorManifestationofFire_FireShield(pUnit, Event) 
pUnit:CastSpell(134) 
end

function MinorManifestationofFire_FlameShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8050, pUnit:GetMainTank()) 
end

function MinorManifestationofFire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MinorManifestationofFire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MinorManifestationofFire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5893, 1, "MinorManifestationofFire_OnCombat")
RegisterUnitEvent(5893, 2, "MinorManifestationofFire_OnLeaveCombat")
RegisterUnitEvent(5893, 3, "MinorManifestationofFire_OnKilledTarget")
RegisterUnitEvent(5893, 4, "MinorManifestationofFire_OnDied")