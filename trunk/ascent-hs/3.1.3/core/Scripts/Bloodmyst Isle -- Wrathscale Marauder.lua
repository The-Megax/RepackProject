--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WrathscaleMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleMarauder_Pummel", 8000, 0)
end

function WrathscaleMarauder_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function WrathscaleMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17334, 1, "WrathscaleMarauder_OnCombat")
RegisterUnitEvent(17334, 2, "WrathscaleMarauder_OnLeaveCombat")
RegisterUnitEvent(17334, 3, "WrathscaleMarauder_OnKilledTarget")
RegisterUnitEvent(17334, 4, "WrathscaleMarauder_OnDied")