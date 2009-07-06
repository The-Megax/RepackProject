--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SunhawkAgent_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkAgent_Eviscerate", 10000, 0)
Unit:RegisterEvent("SunhawkAgent_MarkoftheSunhawk", 8000, 0)
Unit:RegisterEvent("SunhawkAgent_SinisterStrike", 6000, 0)
end

function SunhawkAgent_Eviscerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15691, pUnit:GetMainTank()) 
end

function SunhawkAgent_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkAgent_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function SunhawkAgent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkAgent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkAgent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17610, 1, "SunhawkAgent_OnCombat")
RegisterUnitEvent(17610, 2, "SunhawkAgent_OnLeaveCombat")
RegisterUnitEvent(17610, 3, "SunhawkAgent_OnKilledTarget")
RegisterUnitEvent(17610, 4, "SunhawkAgent_OnDied")