--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SeethingHate_OnCombat(Unit, Event)
Unit:RegisterEvent("SeethingHate_SeethingEvil", 3000, 1)
end

function SeethingHate_SeethingEvil(pUnit, Event) 
pUnit:CastSpell(52342) 
end

function SeethingHate_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeethingHate_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeethingHate_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32429, 1, "SeethingHate_OnCombat")
RegisterUnitEvent(32429, 2, "SeethingHate_OnLeaveCombat")
RegisterUnitEvent(32429, 3, "SeethingHate_OnKilledTarget")
RegisterUnitEvent(32429, 4, "SeethingHate_OnDied")