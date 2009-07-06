--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function UthilMooncall_OnCombat(Unit, Event)
Unit:RegisterEvent("UthilMooncall_BearForm", 1000, 1)
Unit:RegisterEvent("UthilMooncall_Maul", 5000, 0)
end

function UthilMooncall_BearForm(pUnit, Event) 
pUnit:CastSpell(7090) 
end

function UthilMooncall_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12161, pUnit:GetMainTank()) 
end

function UthilMooncall_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UthilMooncall_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UthilMooncall_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3941, 1, "UthilMooncall_OnCombat")
RegisterUnitEvent(3941, 2, "UthilMooncall_OnLeaveCombat")
RegisterUnitEvent(3941, 3, "UthilMooncall_OnKilledTarget")
RegisterUnitEvent(3941, 4, "UthilMooncall_OnDied")