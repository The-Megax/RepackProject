--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function KelThuzad_OnCombat(Unit, Event)
Unit:RegisterEvent("KelThuzad_SoulFlay", 15000, 0)
Unit:RegisterEvent("KelThuzad_UnholyFrenzy", 20000, 0)
end

function KelThuzad_SoulFlay(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50319, pUnit:GetMainTank()) 
end

function KelThuzad_UnholyFrenzy(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50312, pUnit:GetMainTank()) 
end

function KelThuzad_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KelThuzad_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KelThuzad_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25465, 1, "KelThuzad_OnCombat")
RegisterUnitEvent(25465, 2, "KelThuzad_OnLeaveCombat")
RegisterUnitEvent(25465, 3, "KelThuzad_OnKilledTarget")
RegisterUnitEvent(25465, 4, "KelThuzad_OnDied")