--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DemonSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("DemonSpirit_SummonedDemon", 5000, 1)
end

function DemonSpirit_SummonedDemon(pUnit, Event) 
pUnit:CastSpell(7741) 
end

function DemonSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DemonSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DemonSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11876, 1, "DemonSpirit_OnCombat")
RegisterUnitEvent(11876, 2, "DemonSpirit_OnLeaveCombat")
RegisterUnitEvent(11876, 3, "DemonSpirit_OnKilledTarget")
RegisterUnitEvent(11876, 4, "DemonSpirit_OnDied")