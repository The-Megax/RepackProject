--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GreatCourser_OnCombat(Unit, Event)
Unit:RegisterEvent("GreatCourser_RushingCharge", 8000, 0)
end

function GreatCourser_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GreatCourser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreatCourser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreatCourser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4019, 1, "GreatCourser_OnCombat")
RegisterUnitEvent(4019, 2, "GreatCourser_OnLeaveCombat")
RegisterUnitEvent(4019, 3, "GreatCourser_OnKilledTarget")
RegisterUnitEvent(4019, 4, "GreatCourser_OnDied")