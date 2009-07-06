--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TempestRevenant_OnCombat(Unit, Event)
Unit:RegisterEvent("TempestRevenant_SeethingFlames", 6000, 0)
end

function TempestRevenant_SeethingFlames(pUnit, Event) 
pUnit:FullCastSpellOnTarget(56620, pUnit:GetMainTank()) 
end

function TempestRevenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TempestRevenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TempestRevenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30875, 1, "TempestRevenant_OnCombat")
RegisterUnitEvent(30875, 2, "TempestRevenant_OnLeaveCombat")
RegisterUnitEvent(30875, 3, "TempestRevenant_OnKilledTarget")
RegisterUnitEvent(30875, 4, "TempestRevenant_OnDied")