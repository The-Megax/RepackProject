--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function InfiniteTimebreaker_OnCombat(Unit, Event)
Unit:RegisterEvent("InfiniteTimebreaker_Enrage", 8000, 0)
Unit:RegisterEvent("InfiniteTimebreaker_TimeStop", 12000, 2)
end

function InfiniteTimebreaker_Enrage(pUnit, Event) 
pUnit:CastSpell(60075) 
end

function InfiniteTimebreaker_TimeStop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(60074, pUnit:GetMainTank()) 
end

function InfiniteTimebreaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfiniteTimebreaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfiniteTimebreaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32186, 1, "InfiniteTimebreaker_OnCombat")
RegisterUnitEvent(32186, 2, "InfiniteTimebreaker_OnLeaveCombat")
RegisterUnitEvent(32186, 3, "InfiniteTimebreaker_OnKilledTarget")
RegisterUnitEvent(32186, 4, "InfiniteTimebreaker_OnDied")