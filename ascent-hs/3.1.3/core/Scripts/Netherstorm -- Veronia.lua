--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]
function Veronia_OnCombat(Unit, Event)
Unit:RegisterEvent("Veronia_Fight", 8000, 0)
end

function Veronia_Fight(pUnit, Event) 
pUnit:CastSpell(34905) 
end

function Veronia_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Veronia_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Veronia_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20162, 1, "Veronia_OnCombat")
RegisterUnitEvent(20162, 2, "Veronia_OnLeaveCombat")
RegisterUnitEvent(20162, 3, "Veronia_OnKilledTarget")
RegisterUnitEvent(20162, 4, "Veronia_OnDied")