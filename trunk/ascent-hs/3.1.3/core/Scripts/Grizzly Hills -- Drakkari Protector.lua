--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DrakkariProtector_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariProtector_HeadTrauma", 7000, 0)
end

function DrakkariProtector_HeadTrauma(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52425, pUnit:GetMainTank()) 
end

function DrakkariProtector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariProtector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariProtector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26797, 1, "DrakkariProtector_OnCombat")
RegisterUnitEvent(26797, 2, "DrakkariProtector_OnLeaveCombat")
RegisterUnitEvent(26797, 3, "DrakkariProtector_OnKilledTarget")
RegisterUnitEvent(26797, 4, "DrakkariProtector_OnDied")