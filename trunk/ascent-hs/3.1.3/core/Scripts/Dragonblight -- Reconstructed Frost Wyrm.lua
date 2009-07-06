--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ReconstructedFrostWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("ReconstructedFrostWyrm_FrostBreath", 6500, 0)
end

function ReconstructedFrostWyrm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function ReconstructedFrostWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReconstructedFrostWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReconstructedFrostWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27285, 1, "ReconstructedFrostWyrm_OnCombat")
RegisterUnitEvent(27285, 2, "ReconstructedFrostWyrm_OnLeaveCombat")
RegisterUnitEvent(27285, 3, "ReconstructedFrostWyrm_OnKilledTarget")
RegisterUnitEvent(27285, 4, "ReconstructedFrostWyrm_OnDied")