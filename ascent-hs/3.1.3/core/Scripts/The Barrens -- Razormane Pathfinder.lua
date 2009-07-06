--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormanePathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormanePathfinder_Shoot", 6000, 0)
Unit:RegisterEvent("RazormanePathfinder_Thrash", 4000, 1)
end

function RazormanePathfinder_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RazormanePathfinder_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function RazormanePathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormanePathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormanePathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3456, 1, "RazormanePathfinder_OnCombat")
RegisterUnitEvent(3456, 2, "RazormanePathfinder_OnLeaveCombat")
RegisterUnitEvent(3456, 3, "RazormanePathfinder_OnKilledTarget")
RegisterUnitEvent(3456, 4, "RazormanePathfinder_OnDied")