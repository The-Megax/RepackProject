--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HandofArgusSwordsman_OnCombat(Unit, Event)
Unit:RegisterEvent("HandofArgusSwordsman_BattleSgout", 2000, 1)
Unit:RegisterEvent("HandofArgusSwordsman_Strike", 6000, 0)
end

function HandofArgusSwordsman_BattleSgout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function HandofArgusSwordsman_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function HandofArgusSwordsman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HandofArgusSwordsman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HandofArgusSwordsman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17704, 1, "HandofArgusSwordsman_OnCombat")
RegisterUnitEvent(17704, 2, "HandofArgusSwordsman_OnLeaveCombat")
RegisterUnitEvent(17704, 3, "HandofArgusSwordsman_OnKilledTarget")
RegisterUnitEvent(17704, 4, "HandofArgusSwordsman_OnDied")