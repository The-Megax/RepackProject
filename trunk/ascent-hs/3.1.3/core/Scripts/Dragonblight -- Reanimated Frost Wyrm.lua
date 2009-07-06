--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ReanimatedFrostWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("ReanimatedFrostWyrm_FrostBreath", 6500, 0)
end

function ReanimatedFrostWyrm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function ReanimatedFrostWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReanimatedFrostWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReanimatedFrostWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26841, 1, "ReanimatedFrostWyrm_OnCombat")
RegisterUnitEvent(26841, 2, "ReanimatedFrostWyrm_OnLeaveCombat")
RegisterUnitEvent(26841, 3, "ReanimatedFrostWyrm_OnKilledTarget")
RegisterUnitEvent(26841, 4, "ReanimatedFrostWyrm_OnDied")