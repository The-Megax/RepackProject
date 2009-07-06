--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DuskhowlProwler_OnCombat(Unit, Event)
Unit:RegisterEvent("DuskhowlProwler_Gore", 10000, 0)
end

function DuskhowlProwler_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function DuskhowlProwler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DuskhowlProwler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DuskhowlProwler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27408, 1, "DuskhowlProwler_OnCombat")
RegisterUnitEvent(27408, 2, "DuskhowlProwler_OnLeaveCombat")
RegisterUnitEvent(27408, 3, "DuskhowlProwler_OnKilledTarget")
RegisterUnitEvent(27408, 4, "DuskhowlProwler_OnDied")