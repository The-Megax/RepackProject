--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodsporeRoaster_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodsporeRoaster_Roast", 8000, 0)
end

function BloodsporeRoaster_Roast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50402, pUnit:GetMainTank()) 
end

function BloodsporeRoaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodsporeRoaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodsporeRoaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25468, 1, "BloodsporeRoaster_OnCombat")
RegisterUnitEvent(25468, 2, "BloodsporeRoaster_OnLeaveCombat")
RegisterUnitEvent(25468, 3, "BloodsporeRoaster_OnKilledTarget")
RegisterUnitEvent(25468, 4, "BloodsporeRoaster_OnDied")