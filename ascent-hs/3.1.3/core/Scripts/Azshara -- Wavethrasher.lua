--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Wavethrasher_OnCombat(Unit, Event)
Unit:RegisterEvent("Wavethrasher_Thrash", 5000, 0)
end

function Wavethrasher_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function Wavethrasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Wavethrasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Wavethrasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6348, 1, "Wavethrasher_OnCombat")
RegisterUnitEvent(6348, 2, "Wavethrasher_OnLeaveCombat")
RegisterUnitEvent(6348, 3, "Wavethrasher_OnKilledTarget")
RegisterUnitEvent(6348, 4, "Wavethrasher_OnDied")