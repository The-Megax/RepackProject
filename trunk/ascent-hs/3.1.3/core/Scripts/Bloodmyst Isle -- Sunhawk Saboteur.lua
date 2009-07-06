--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SunhawkSaboteur_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkSaboteur_MarkoftheSunhawk", 7500, 0)
Unit:RegisterEvent("SunhawkSaboteur_MultiShot", 9000, 0)
Unit:RegisterEvent("SunhawkSaboteur_Shoot", 6000, 0)
end

function SunhawkSaboteur_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkSaboteur_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14433, pUnit:GetMainTank()) 
end

function SunhawkSaboteur_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SunhawkSaboteur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkSaboteur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkSaboteur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17609, 1, "SunhawkSaboteur_OnCombat")
RegisterUnitEvent(17609, 2, "SunhawkSaboteur_OnLeaveCombat")
RegisterUnitEvent(17609, 3, "SunhawkSaboteur_OnKilledTarget")
RegisterUnitEvent(17609, 4, "SunhawkSaboteur_OnDied")