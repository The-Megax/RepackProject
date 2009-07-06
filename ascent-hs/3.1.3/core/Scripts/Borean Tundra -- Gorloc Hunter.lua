--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GorlocHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocHunter_ParalyzingSlime", 7000, 0)
end

function GorlocHunter_ParalyzingSlime(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50523, pUnit:GetMainTank()) 
end

function GorlocHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25700, 1, "GorlocHunter_OnCombat")
RegisterUnitEvent(25700, 2, "GorlocHunter_OnLeaveCombat")
RegisterUnitEvent(25700, 3, "GorlocHunter_OnKilledTarget")
RegisterUnitEvent(25700, 4, "GorlocHunter_OnDied")