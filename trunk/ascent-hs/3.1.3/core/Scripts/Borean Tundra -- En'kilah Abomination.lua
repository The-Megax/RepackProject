--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EnkilahAbomination_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahAbomination_Cleave", 8000, 0)
Unit:RegisterEvent("EnkilahAbomination_ScourgeHook", 6000, 0)
end

function EnkilahAbomination_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function EnkilahAbomination_ScourgeHook(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50335, pUnit:GetMainTank()) 
end

function EnkilahAbomination_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahAbomination_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahAbomination_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25383, 1, "EnkilahAbomination_OnCombat")
RegisterUnitEvent(25383, 2, "EnkilahAbomination_OnLeaveCombat")
RegisterUnitEvent(25383, 3, "EnkilahAbomination_OnKilledTarget")
RegisterUnitEvent(25383, 4, "EnkilahAbomination_OnDied")