--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BrotherRavenoak_OnCombat(Unit, Event)
Unit:RegisterEvent("BrotherRavenoak_LowSwipe", 10000, 0)
Unit:RegisterEvent("BrotherRavenoak_Maul", 6000, 0)
end

function BrotherRavenoak_LowSwipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8716, pUnit:GetMainTank()) 
end

function BrotherRavenoak_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12161, pUnit:GetMainTank()) 
end

function BrotherRavenoak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BrotherRavenoak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BrotherRavenoak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5915, 1, "BrotherRavenoak_OnCombat")
RegisterUnitEvent(5915, 2, "BrotherRavenoak_OnLeaveCombat")
RegisterUnitEvent(5915, 3, "BrotherRavenoak_OnKilledTarget")
RegisterUnitEvent(5915, 4, "BrotherRavenoak_OnDied")