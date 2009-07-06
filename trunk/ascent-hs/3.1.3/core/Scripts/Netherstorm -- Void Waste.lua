--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Waste_OnCombat(Unit, Event)
Unit:RegisterEvent("Waste_Toxic", 3000, 0)
end

function Waste_Toxic(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36519, pUnit:GetMainTank()) 
end

function Waste_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Waste_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Waste_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20778, 1, "Waste_OnCombat")
RegisterUnitEvent(20778, 2, "Waste_OnLeaveCombat")
RegisterUnitEvent(20778, 3, "Waste_OnKilledTarget")
RegisterUnitEvent(20778, 4, "Waste_OnDied")