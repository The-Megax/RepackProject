--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThistlefurPathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurPathfinder_Shoot", 6000, 0)
end

function ThistlefurPathfinder_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function ThistlefurPathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurPathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurPathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3926, 1, "ThistlefurPathfinder_OnCombat")
RegisterUnitEvent(3926, 2, "ThistlefurPathfinder_OnLeaveCombat")
RegisterUnitEvent(3926, 3, "ThistlefurPathfinder_OnKilledTarget")
RegisterUnitEvent(3926, 4, "ThistlefurPathfinder_OnDied")