--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LesserFelguard_OnCombat(Unit, Event)
Unit:RegisterEvent("LesserFelguard_FireShieldII", 1000, 1)
Unit:RegisterEvent("LesserFelguard_Knockdown", 7000, 0)
end

function LesserFelguard_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function LesserFelguard_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18812, pUnit:GetMainTank()) 
end

function LesserFelguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LesserFelguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LesserFelguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3772, 1, "LesserFelguard_OnCombat")
RegisterUnitEvent(3772, 2, "LesserFelguard_OnLeaveCombat")
RegisterUnitEvent(3772, 3, "LesserFelguard_OnKilledTarget")
RegisterUnitEvent(3772, 4, "LesserFelguard_OnDied")