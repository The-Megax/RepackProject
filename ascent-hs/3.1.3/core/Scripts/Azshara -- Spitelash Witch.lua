--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SpitelashWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashWitch_ForkedLightning", 5000, 0)
Unit:RegisterEvent("SpitelashWitch_LightningShield", 9000, 0)
Unit:RegisterEvent("SpitelashWitch_Frostbolt", 7000, 0)
end

function SpitelashWitch_ForkedLightning(pUnit, Event) 
pUnit:CastSpell(20299) 
end

function SpitelashWitch_LightningShield(pUnit, Event) 
pUnit:CastSpell(12550) 
end

function SpitelashWitch_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20297, pUnit:GetMainTank()) 
end

function SpitelashWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12205, 1, "SpitelashWitch_OnCombat")
RegisterUnitEvent(12205, 2, "SpitelashWitch_OnLeaveCombat")
RegisterUnitEvent(12205, 3, "SpitelashWitch_OnKilledTarget")
RegisterUnitEvent(12205, 4, "SpitelashWitch_OnDied")