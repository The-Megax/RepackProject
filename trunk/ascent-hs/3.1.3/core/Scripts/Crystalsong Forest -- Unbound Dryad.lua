--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function UnboundDryad_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundDryad_ThrowSpear", 6000, 0)
end

function UnboundDryad_ThrowSpear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(55217, pUnit:GetMainTank()) 
end

function UnboundDryad_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundDryad_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundDryad_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30860, 1, "UnboundDryad_OnCombat")
RegisterUnitEvent(30860, 2, "UnboundDryad_OnLeaveCombat")
RegisterUnitEvent(30860, 3, "UnboundDryad_OnKilledTarget")
RegisterUnitEvent(30860, 4, "UnboundDryad_OnDied")