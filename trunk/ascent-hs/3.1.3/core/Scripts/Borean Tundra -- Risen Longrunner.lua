--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RisenLongrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("RisenLongrunner_GhostStrike", 8000, 0)
end

function RisenLongrunner_GhostStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36093, pUnit:GetMainTank()) 
end

function RisenLongrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RisenLongrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RisenLongrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25350, 1, "RisenLongrunner_OnCombat")
RegisterUnitEvent(25350, 2, "RisenLongrunner_OnLeaveCombat")
RegisterUnitEvent(25350, 3, "RisenLongrunner_OnKilledTarget")
RegisterUnitEvent(25350, 4, "RisenLongrunner_OnDied")