--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GustingVortex_OnCombat(Unit, Event)
Unit:RegisterEvent("GustingVortex_GustofWind", 8000, 0)
end

function GustingVortex_GustofWind(pUnit, Event) 
pUnit:CastSpell(6982) 
end

function GustingVortex_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GustingVortex_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GustingVortex_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8667, 1, "GustingVortex_OnCombat")
RegisterUnitEvent(8667, 2, "GustingVortex_OnLeaveCombat")
RegisterUnitEvent(8667, 3, "GustingVortex_OnKilledTarget")
RegisterUnitEvent(8667, 4, "GustingVortex_OnDied")