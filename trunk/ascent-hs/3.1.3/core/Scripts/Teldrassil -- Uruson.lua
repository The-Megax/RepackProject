--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Uruson_OnCombat(Unit, Event)
Unit:RegisterEvent("Uruson_DemoralizingRoar", 10000, 0)
end

function Uruson_DemoralizingRoar(pUnit, Event) 
pUnit:CastSpell(15971) 
end

function Uruson_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Uruson_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Uruson_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14428, 1, "Uruson_OnCombat")
RegisterUnitEvent(14428, 2, "Uruson_OnLeaveCombat")
RegisterUnitEvent(14428, 3, "Uruson_OnKilledTarget")
RegisterUnitEvent(14428, 4, "Uruson_OnDied")