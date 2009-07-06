--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeToxicologist_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeToxicologist_CurseofAgony", 8000, 2)
Unit:RegisterEvent("BurningBladeToxicologist_Inmolate", 3000, 2)
end

function BurningBladeToxicologist_CurseofAgony(pUnit, Event) 
pUnit:FullCastSpellOnTarget(980, pUnit:GetMainTank()) 
end

function BurningBladeToxicologist_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(707, pUnit:GetMainTank()) 
end

function BurningBladeToxicologist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeToxicologist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeToxicologist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12319, 1, "BurningBladeToxicologist_OnCombat")
RegisterUnitEvent(12319, 2, "BurningBladeToxicologist_OnLeaveCombat")
RegisterUnitEvent(12319, 3, "BurningBladeToxicologist_OnKilledTarget")
RegisterUnitEvent(12319, 4, "BurningBladeToxicologist_OnDied")