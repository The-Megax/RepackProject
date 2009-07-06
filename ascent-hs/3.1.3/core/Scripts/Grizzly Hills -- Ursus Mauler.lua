--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function UrsusMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("UrsusMauler_Maul", 5000, 0)
end

function UrsusMauler_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12161, pUnit:GetMainTank()) 
end

function UrsusMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UrsusMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UrsusMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26644, 1, "UrsusMauler_OnCombat")
RegisterUnitEvent(26644, 2, "UrsusMauler_OnLeaveCombat")
RegisterUnitEvent(26644, 3, "UrsusMauler_OnKilledTarget")
RegisterUnitEvent(26644, 4, "UrsusMauler_OnDied")