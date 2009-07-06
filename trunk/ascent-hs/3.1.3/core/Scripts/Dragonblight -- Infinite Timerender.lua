--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function InfiniteTimerender_OnCombat(Unit, Event)
Unit:RegisterEvent("InfiniteTimerender_TimeLapse", 7000, 0)
end

function InfiniteTimerender_TimeLapse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51020, pUnit:GetMainTank()) 
end

function InfiniteTimerender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfiniteTimerender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfiniteTimerender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27900, 1, "InfiniteTimerender_OnCombat")
RegisterUnitEvent(27900, 2, "InfiniteTimerender_OnLeaveCombat")
RegisterUnitEvent(27900, 3, "InfiniteTimerender_OnKilledTarget")
RegisterUnitEvent(27900, 4, "InfiniteTimerender_OnDied")