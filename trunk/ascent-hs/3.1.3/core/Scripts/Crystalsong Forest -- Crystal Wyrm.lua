--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CrystalWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("CrystalWyrm_FrostBreath", 8000, 0)
end

function CrystalWyrm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function CrystalWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrystalWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrystalWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31393, 1, "CrystalWyrm_OnCombat")
RegisterUnitEvent(31393, 2, "CrystalWyrm_OnLeaveCombat")
RegisterUnitEvent(31393, 3, "CrystalWyrm_OnKilledTarget")
RegisterUnitEvent(31393, 4, "CrystalWyrm_OnDied")