--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DiseasedDrakkari_OnCombat(Unit, Event)
Unit:RegisterEvent("DiseasedDrakkari_FeveredDisease", 10000, 0)
end

function DiseasedDrakkari_FeveredDisease(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34363, pUnit:GetMainTank()) 
end

function DiseasedDrakkari_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DiseasedDrakkari_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DiseasedDrakkari_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26457, 1, "DiseasedDrakkari_OnCombat")
RegisterUnitEvent(26457, 2, "DiseasedDrakkari_OnLeaveCombat")
RegisterUnitEvent(26457, 3, "DiseasedDrakkari_OnKilledTarget")
RegisterUnitEvent(26457, 4, "DiseasedDrakkari_OnDied")