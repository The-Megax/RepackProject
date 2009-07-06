--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WrathscaleMyrmidon_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleMyrmidon_Strike", 6000, 0)
end

function WrathscaleMyrmidon_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WrathscaleMyrmidon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleMyrmidon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleMyrmidon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17194, 1, "WrathscaleMyrmidon_OnCombat")
RegisterUnitEvent(17194, 2, "WrathscaleMyrmidon_OnLeaveCombat")
RegisterUnitEvent(17194, 3, "WrathscaleMyrmidon_OnKilledTarget")
RegisterUnitEvent(17194, 4, "WrathscaleMyrmidon_OnDied")