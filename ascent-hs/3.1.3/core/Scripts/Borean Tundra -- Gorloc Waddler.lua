--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GorlocWaddler_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocWaddler_GorlocStomp", 7000, 0)
end

function GorlocWaddler_GorlocStomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50522, pUnit:GetMainTank()) 
end

function GorlocWaddler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocWaddler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocWaddler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25685, 1, "GorlocWaddler_OnCombat")
RegisterUnitEvent(25685, 2, "GorlocWaddler_OnLeaveCombat")
RegisterUnitEvent(25685, 3, "GorlocWaddler_OnKilledTarget")
RegisterUnitEvent(25685, 4, "GorlocWaddler_OnDied")