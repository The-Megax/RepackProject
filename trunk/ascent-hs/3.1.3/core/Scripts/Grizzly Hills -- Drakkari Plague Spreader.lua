--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DrakkariPlagueSpreader_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariPlagueSpreader_PlagueInfected", 10000, 0)
end

function DrakkariPlagueSpreader_PlagueInfected(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52230, pUnit:GetMainTank()) 
end

function DrakkariPlagueSpreader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariPlagueSpreader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariPlagueSpreader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27941, 1, "DrakkariPlagueSpreader_OnCombat")
RegisterUnitEvent(27941, 2, "DrakkariPlagueSpreader_OnLeaveCombat")
RegisterUnitEvent(27941, 3, "DrakkariPlagueSpreader_OnKilledTarget")
RegisterUnitEvent(27941, 4, "DrakkariPlagueSpreader_OnDied")