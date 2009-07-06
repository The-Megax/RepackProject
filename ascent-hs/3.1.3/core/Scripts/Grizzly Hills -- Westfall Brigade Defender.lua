--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WestfallBrigadeDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeDefender_Strike", 6000, 0)
end

function WestfallBrigadeDefender_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14516, pUnit:GetMainTank()) 
end

function WestfallBrigadeDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27758, 1, "WestfallBrigadeDefender_OnCombat")
RegisterUnitEvent(27758, 2, "WestfallBrigadeDefender_OnLeaveCombat")
RegisterUnitEvent(27758, 3, "WestfallBrigadeDefender_OnKilledTarget")
RegisterUnitEvent(27758, 4, "WestfallBrigadeDefender_OnDied")