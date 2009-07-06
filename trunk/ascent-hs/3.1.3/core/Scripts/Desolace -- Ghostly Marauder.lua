--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GhostlyMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostlyMarauder_Strike", 6000, 0)
end

function GhostlyMarauder_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GhostlyMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostlyMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostlyMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11687, 1, "GhostlyMarauder_OnCombat")
RegisterUnitEvent(11687, 2, "GhostlyMarauder_OnLeaveCombat")
RegisterUnitEvent(11687, 3, "GhostlyMarauder_OnKilledTarget")
RegisterUnitEvent(11687, 4, "GhostlyMarauder_OnDied")