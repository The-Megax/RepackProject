--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FeralNightsaber_OnCombat(Unit, Event)
Unit:RegisterEvent("FeralNightsaber_MuscleTear", 8000, 0)
end

function FeralNightsaber_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function FeralNightsaber_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FeralNightsaber_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FeralNightsaber_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2034, 1, "FeralNightsaber_OnCombat")
RegisterUnitEvent(2034, 2, "FeralNightsaber_OnLeaveCombat")
RegisterUnitEvent(2034, 3, "FeralNightsaber_OnKilledTarget")
RegisterUnitEvent(2034, 4, "FeralNightsaber_OnDied")