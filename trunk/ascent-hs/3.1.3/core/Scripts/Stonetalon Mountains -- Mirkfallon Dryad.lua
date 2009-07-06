--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MirkfallonDryad_OnCombat(Unit, Event)
Unit:RegisterEvent("MirkfallonDryad_SlowingPoison", 10000, 0)
Unit:RegisterEvent("MirkfallonDryad_Throw", 6000, 0)
end

function MirkfallonDryad_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function MirkfallonDryad_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function MirkfallonDryad_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MirkfallonDryad_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MirkfallonDryad_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4061, 1, "MirkfallonDryad_OnCombat")
RegisterUnitEvent(4061, 2, "MirkfallonDryad_OnLeaveCombat")
RegisterUnitEvent(4061, 3, "MirkfallonDryad_OnKilledTarget")
RegisterUnitEvent(4061, 4, "MirkfallonDryad_OnDied")