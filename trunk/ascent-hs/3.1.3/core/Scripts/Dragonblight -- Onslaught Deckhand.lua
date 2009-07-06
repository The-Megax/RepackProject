--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OnslaughtDeckhand_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtDeckhand_SideKick", 6000, 0)
end

function OnslaughtDeckhand_SideKick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50854, pUnit:GetMainTank()) 
end

function OnslaughtDeckhand_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtDeckhand_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtDeckhand_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27233, 1, "OnslaughtDeckhand_OnCombat")
RegisterUnitEvent(27233, 2, "OnslaughtDeckhand_OnLeaveCombat")
RegisterUnitEvent(27233, 3, "OnslaughtDeckhand_OnKilledTarget")
RegisterUnitEvent(27233, 4, "OnslaughtDeckhand_OnDied")