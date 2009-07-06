--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GelkisEarthcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisEarthcaller_Fireball", 8000, 0)
Unit:RegisterEvent("GelkisEarthcaller_SummonGelkisRumbler", 4000, 1)
end

function GelkisEarthcaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20815, pUnit:GetMainTank()) 
end

function GelkisEarthcaller_SummonGelkisRumbler(pUnit, Event) 
pUnit:CastSpell(9653) 
end

function GelkisEarthcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisEarthcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisEarthcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4651, 1, "GelkisEarthcaller_OnCombat")
RegisterUnitEvent(4651, 2, "GelkisEarthcaller_OnLeaveCombat")
RegisterUnitEvent(4651, 3, "GelkisEarthcaller_OnKilledTarget")
RegisterUnitEvent(4651, 4, "GelkisEarthcaller_OnDied")