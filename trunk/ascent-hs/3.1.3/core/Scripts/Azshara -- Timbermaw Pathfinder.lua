--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TimbermawPathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawPathfinder_FaerieFire", 10000, 0)
end

function TimbermawPathfinder_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16498, pUnit:GetMainTank()) 
end

function TimbermawPathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawPathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawPathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6184, 1, "TimbermawPathfinder_OnCombat")
RegisterUnitEvent(6184, 2, "TimbermawPathfinder_OnLeaveCombat")
RegisterUnitEvent(6184, 3, "TimbermawPathfinder_OnKilledTarget")
RegisterUnitEvent(6184, 4, "TimbermawPathfinder_OnDied")