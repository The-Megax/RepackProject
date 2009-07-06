--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RanBloodtooth_OnCombat(Unit, Event)
Unit:RegisterEvent("RanBloodtooth_MultiShot", 10000, 0)
Unit:RegisterEvent("RanBloodtooth_Shoot", 6000, 0)
end

function RanBloodtooth_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function RanBloodtooth_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RanBloodtooth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RanBloodtooth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RanBloodtooth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3696, 1, "RanBloodtooth_OnCombat")
RegisterUnitEvent(3696, 2, "RanBloodtooth_OnLeaveCombat")
RegisterUnitEvent(3696, 3, "RanBloodtooth_OnKilledTarget")
RegisterUnitEvent(3696, 4, "RanBloodtooth_OnDied")