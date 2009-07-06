--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function LandRager_OnCombat(Unit, Event)
Unit:RegisterEvent("LandRager_Enrage", 120000, 0)
end

function LandRager_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function LandRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LandRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LandRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5465, 1, "LandRager_OnCombat")
RegisterUnitEvent(5465, 2, "LandRager_OnLeaveCombat")
RegisterUnitEvent(5465, 3, "LandRager_OnKilledTarget")
RegisterUnitEvent(5465, 4, "LandRager_OnDied")