--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WildBuck_OnCombat(Unit, Event)
Unit:RegisterEvent("WildBuck_RushingCharge", 8000, 0)
end

function WildBuck_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function WildBuck_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildBuck_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildBuck_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3816, 1, "WildBuck_OnCombat")
RegisterUnitEvent(3816, 2, "WildBuck_OnLeaveCombat")
RegisterUnitEvent(3816, 3, "WildBuck_OnKilledTarget")
RegisterUnitEvent(3816, 4, "WildBuck_OnDied")