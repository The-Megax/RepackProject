--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BlacksiltSeer_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksiltSeer_Rejuvenation", 10000, 0)
Unit:RegisterEvent("BlacksiltSeer_Wrath", 7000, 0)
end

function BlacksiltSeer_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(12160) 
end

function BlacksiltSeer_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function BlacksiltSeer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksiltSeer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksiltSeer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17330, 1, "BlacksiltSeer_OnCombat")
RegisterUnitEvent(17330, 2, "BlacksiltSeer_OnLeaveCombat")
RegisterUnitEvent(17330, 3, "BlacksiltSeer_OnKilledTarget")
RegisterUnitEvent(17330, 4, "BlacksiltSeer_OnDied")