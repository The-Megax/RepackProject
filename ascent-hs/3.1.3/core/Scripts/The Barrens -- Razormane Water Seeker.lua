--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormaneWaterSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneWaterSeeker_CreepingMold", 4000, 1)
end

function RazormaneWaterSeeker_CreepingMold(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6278, pUnit:GetMainTank()) 
end

function RazormaneWaterSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneWaterSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneWaterSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3267, 1, "RazormaneWaterSeeker_OnCombat")
RegisterUnitEvent(3267, 2, "RazormaneWaterSeeker_OnLeaveCombat")
RegisterUnitEvent(3267, 3, "RazormaneWaterSeeker_OnKilledTarget")
RegisterUnitEvent(3267, 4, "RazormaneWaterSeeker_OnDied")