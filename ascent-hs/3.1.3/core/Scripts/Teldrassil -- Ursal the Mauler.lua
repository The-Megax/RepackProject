--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function UrsaltheMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("UrsaltheMauler_Maul", 6000, 0)
end

function UrsaltheMauler_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15793, pUnit:GetMainTank()) 
end

function UrsaltheMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UrsaltheMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UrsaltheMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2039, 1, "UrsaltheMauler_OnCombat")
RegisterUnitEvent(2039, 2, "UrsaltheMauler_OnLeaveCombat")
RegisterUnitEvent(2039, 3, "UrsaltheMauler_OnKilledTarget")
RegisterUnitEvent(2039, 4, "UrsaltheMauler_OnDied")