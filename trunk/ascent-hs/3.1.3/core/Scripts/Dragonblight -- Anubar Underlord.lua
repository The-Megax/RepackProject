--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AnubarUnderlord_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarUnderlord_RearingStomp", 8000, 0)
end

function AnubarUnderlord_RearingStomp(pUnit, Event) 
pUnit:CastSpell(51681) 
end

function AnubarUnderlord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarUnderlord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarUnderlord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26605, 1, "AnubarUnderlord_OnCombat")
RegisterUnitEvent(26605, 2, "AnubarUnderlord_OnLeaveCombat")
RegisterUnitEvent(26605, 3, "AnubarUnderlord_OnKilledTarget")
RegisterUnitEvent(26605, 4, "AnubarUnderlord_OnDied")