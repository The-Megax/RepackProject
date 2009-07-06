--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function FenissatheAssassin_OnCombat(Unit, Event)
Unit:RegisterEvent("FenissatheAssassin_Gouge", 8000, 0)
Unit:RegisterEvent("FenissatheAssassin_SinisterStrike", 6000, 0)
end

function FenissatheAssassin_Gouge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38863, pUnit:GetMainTank()) 
end

function FenissatheAssassin_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function FenissatheAssassin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FenissatheAssassin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FenissatheAssassin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(22060, 1, "FenissatheAssassin_OnCombat")
RegisterUnitEvent(22060, 2, "FenissatheAssassin_OnLeaveCombat")
RegisterUnitEvent(22060, 3, "FenissatheAssassin_OnKilledTarget")
RegisterUnitEvent(22060, 4, "FenissatheAssassin_OnDied")