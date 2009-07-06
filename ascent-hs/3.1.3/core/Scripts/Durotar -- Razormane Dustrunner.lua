--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormaneDustrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneDustrunner_FaerieFire", 2000, 2)
Unit:RegisterEvent("RazormaneDustrunner_Rejuvenation", 12000, 0)
end

function RazormaneDustrunner_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank()) 
end

function RazormaneDustrunner_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function RazormaneDustrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneDustrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneDustrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3113, 1, "RazormaneDustrunner_OnCombat")
RegisterUnitEvent(3113, 2, "RazormaneDustrunner_OnLeaveCombat")
RegisterUnitEvent(3113, 3, "RazormaneDustrunner_OnKilledTarget")
RegisterUnitEvent(3113, 4, "RazormaneDustrunner_OnDied")