--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NorthseaMercenary_OnCombat(Unit, Event)
Unit:RegisterEvent("NorthseaMercenary_Crazed", 5000, 1)
end

function NorthseaMercenary_Crazed(pUnit, Event) 
pUnit:CastSpell(5915) 
end

function NorthseaMercenary_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NorthseaMercenary_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NorthseaMercenary_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25839, 1, "NorthseaMercenary_OnCombat")
RegisterUnitEvent(25839, 2, "NorthseaMercenary_OnLeaveCombat")
RegisterUnitEvent(25839, 3, "NorthseaMercenary_OnKilledTarget")
RegisterUnitEvent(25839, 4, "NorthseaMercenary_OnDied")