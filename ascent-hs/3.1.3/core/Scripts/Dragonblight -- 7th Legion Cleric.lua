--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function thLegionCleric_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionCleric_Heal", 14000, 0)
Unit:RegisterEvent("thLegionCleric_HolySmite", 6000, 0)
end

function thLegionCleric_Heal(pUnit, Event) 
pUnit:CastSpell(31739) 
end

function thLegionCleric_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25054, pUnit:GetMainTank()) 
end

function thLegionCleric_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionCleric_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionCleric_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26780, 1, "thLegionCleric_OnCombat")
RegisterUnitEvent(26780, 2, "thLegionCleric_OnLeaveCombat")
RegisterUnitEvent(26780, 3, "thLegionCleric_OnKilledTarget")
RegisterUnitEvent(26780, 4, "thLegionCleric_OnDied")