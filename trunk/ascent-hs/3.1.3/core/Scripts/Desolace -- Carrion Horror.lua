--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CarrionHorror_OnCombat(Unit, Event)
Unit:RegisterEvent("CarrionHorror_InfectedWound", 5000, 2)
end

function CarrionHorror_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3427, pUnit:GetMainTank()) 
end

function CarrionHorror_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CarrionHorror_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CarrionHorror_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4695, 1, "CarrionHorror_OnCombat")
RegisterUnitEvent(4695, 2, "CarrionHorror_OnLeaveCombat")
RegisterUnitEvent(4695, 3, "CarrionHorror_OnKilledTarget")
RegisterUnitEvent(4695, 4, "CarrionHorror_OnDied")