--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SnorttheHeckler_OnCombat(Unit, Event)
Unit:RegisterEvent("SnorttheHeckler_ToxicSpit", 6000, 0)
end

function SnorttheHeckler_ToxicSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7951, pUnit:GetMainTank()) 
end

function SnorttheHeckler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnorttheHeckler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnorttheHeckler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5829, 1, "SnorttheHeckler_OnCombat")
RegisterUnitEvent(5829, 2, "SnorttheHeckler_OnLeaveCombat")
RegisterUnitEvent(5829, 3, "SnorttheHeckler_OnKilledTarget")
RegisterUnitEvent(5829, 4, "SnorttheHeckler_OnDied")