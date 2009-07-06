--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MarshFawn_OnCombat(Unit, Event)
Unit:RegisterEvent("MarshFawn_Gore", 8000, 0)
end

function MarshFawn_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function MarshFawn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarshFawn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarshFawn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25829, 1, "MarshFawn_OnCombat")
RegisterUnitEvent(25829, 2, "MarshFawn_OnLeaveCombat")
RegisterUnitEvent(25829, 3, "MarshFawn_OnKilledTarget")
RegisterUnitEvent(25829, 4, "MarshFawn_OnDied")