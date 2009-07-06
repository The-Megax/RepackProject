--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AncientDrakkariKing_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientDrakkariKing_DrakkariCurse", 8000, 0)
end

function AncientDrakkariKing_DrakkariCurse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52466, pUnit:GetMainTank()) 
end

function AncientDrakkariKing_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientDrakkariKing_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientDrakkariKing_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26871, 1, "AncientDrakkariKing_OnCombat")
RegisterUnitEvent(26871, 2, "AncientDrakkariKing_OnLeaveCombat")
RegisterUnitEvent(26871, 3, "AncientDrakkariKing_OnKilledTarget")
RegisterUnitEvent(26871, 4, "AncientDrakkariKing_OnDied")