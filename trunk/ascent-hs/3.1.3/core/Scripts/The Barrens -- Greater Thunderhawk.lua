--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GreaterThunderhawk_OnCombat(Unit, Event)
Unit:RegisterEvent("GreaterThunderhawk_ThunderClap", 10000, 0)
end

function GreaterThunderhawk_ThunderClap(pUnit, Event) 
pUnit:CastSpell(8078) 
end

function GreaterThunderhawk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreaterThunderhawk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreaterThunderhawk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3249, 1, "GreaterThunderhawk_OnCombat")
RegisterUnitEvent(3249, 2, "GreaterThunderhawk_OnLeaveCombat")
RegisterUnitEvent(3249, 3, "GreaterThunderhawk_OnKilledTarget")
RegisterUnitEvent(3249, 4, "GreaterThunderhawk_OnDied")