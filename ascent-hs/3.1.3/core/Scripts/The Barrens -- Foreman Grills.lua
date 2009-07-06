--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ForemanGrills_OnCombat(Unit, Event)
Unit:RegisterEvent("ForemanGrills_Hamstring", 12000, 0)
end

function ForemanGrills_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function ForemanGrills_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForemanGrills_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForemanGrills_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5835, 1, "ForemanGrills_OnCombat")
RegisterUnitEvent(5835, 2, "ForemanGrills_OnLeaveCombat")
RegisterUnitEvent(5835, 3, "ForemanGrills_OnKilledTarget")
RegisterUnitEvent(5835, 4, "ForemanGrills_OnDied")