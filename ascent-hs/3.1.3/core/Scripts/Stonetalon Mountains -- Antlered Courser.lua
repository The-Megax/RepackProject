--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AntleredCourser_OnCombat(Unit, Event)
Unit:RegisterEvent("AntleredCourser_RushingCharge", 8000, 0)
end

function AntleredCourser_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function AntleredCourser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AntleredCourser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AntleredCourser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4018, 1, "AntleredCourser_OnCombat")
RegisterUnitEvent(4018, 2, "AntleredCourser_OnLeaveCombat")
RegisterUnitEvent(4018, 3, "AntleredCourser_OnKilledTarget")
RegisterUnitEvent(4018, 4, "AntleredCourser_OnDied")