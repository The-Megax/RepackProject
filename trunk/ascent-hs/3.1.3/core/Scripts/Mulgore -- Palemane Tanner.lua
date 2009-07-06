--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function PalemaneTanner_OnCombat(Unit, Event)
Unit:RegisterEvent("PalemaneTanner_Wrath", 10000, 0)
end

function PalemaneTanner_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function PalemaneTanner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PalemaneTanner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PalemaneTanner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2949, 1, "PalemaneTanner_OnCombat")
RegisterUnitEvent(2949, 2, "PalemaneTanner_OnLeaveCombat")
RegisterUnitEvent(2949, 3, "PalemaneTanner_OnKilledTarget")
RegisterUnitEvent(2949, 4, "PalemaneTanner_OnDied")