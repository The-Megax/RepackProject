--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MosshoofCourser_OnCombat(Unit, Event)
Unit:RegisterEvent("MosshoofCourser_Enrage", 10000, 0)
end

function MosshoofCourser_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function MosshoofCourser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MosshoofCourser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MosshoofCourser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8761, 1, "MosshoofCourser_OnCombat")
RegisterUnitEvent(8761, 2, "MosshoofCourser_OnLeaveCombat")
RegisterUnitEvent(8761, 3, "MosshoofCourser_OnKilledTarget")
RegisterUnitEvent(8761, 4, "MosshoofCourser_OnDied")