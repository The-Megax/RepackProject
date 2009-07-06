--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WrathscaleSorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleSorceress_Frostbolt", 8000, 0)
end

function WrathscaleSorceress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function WrathscaleSorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleSorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleSorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17336, 1, "WrathscaleSorceress_OnCombat")
RegisterUnitEvent(17336, 2, "WrathscaleSorceress_OnLeaveCombat")
RegisterUnitEvent(17336, 3, "WrathscaleSorceress_OnKilledTarget")
RegisterUnitEvent(17336, 4, "WrathscaleSorceress_OnDied")