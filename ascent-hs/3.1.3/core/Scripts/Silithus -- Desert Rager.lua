--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DesertRager_OnCombat(Unit, Event)
Unit:RegisterEvent("DesertRager_EarthShock", 8000, 0)
Unit:RegisterEvent("DesertRager_Enrage", 12000, 1)
end

function DesertRager_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13728, pUnit:GetMainTank()) 
end

function DesertRager_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function DesertRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DesertRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DesertRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11747, 1, "DesertRager_OnCombat")
RegisterUnitEvent(11747, 2, "DesertRager_OnLeaveCombat")
RegisterUnitEvent(11747, 3, "DesertRager_OnKilledTarget")
RegisterUnitEvent(11747, 4, "DesertRager_OnDied")