--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FoulwealdPathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdPathfinder_Shoot", 6000, 0)
end

function FoulwealdPathfinder_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function FoulwealdPathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdPathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdPathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3745, 1, "FoulwealdPathfinder_OnCombat")
RegisterUnitEvent(3745, 2, "FoulwealdPathfinder_OnLeaveCombat")
RegisterUnitEvent(3745, 3, "FoulwealdPathfinder_OnKilledTarget")
RegisterUnitEvent(3745, 4, "FoulwealdPathfinder_OnDied")