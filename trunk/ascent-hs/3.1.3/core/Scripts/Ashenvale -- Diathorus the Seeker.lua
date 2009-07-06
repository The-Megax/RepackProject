--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DiathorustheSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("DiathorustheSeeker_DrainLife", 8000, 0)
end

function DiathorustheSeeker_DrainLife(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18557, pUnit:GetMainTank()) 
end

function DiathorustheSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DiathorustheSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DiathorustheSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6072, 1, "DiathorustheSeeker_OnCombat")
RegisterUnitEvent(6072, 2, "DiathorustheSeeker_OnLeaveCombat")
RegisterUnitEvent(6072, 3, "DiathorustheSeeker_OnKilledTarget")
RegisterUnitEvent(6072, 4, "DiathorustheSeeker_OnDied")