--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SaroniteHorror_OnCombat(Unit, Event)
Unit:RegisterEvent("SaroniteHorror_SeethingEvil", 3000, 1)
end

function SaroniteHorror_SeethingEvil(pUnit, Event) 
pUnit:CastSpell(52342) 
end

function SaroniteHorror_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaroniteHorror_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaroniteHorror_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26646, 1, "SaroniteHorror_OnCombat")
RegisterUnitEvent(26646, 2, "SaroniteHorror_OnLeaveCombat")
RegisterUnitEvent(26646, 3, "SaroniteHorror_OnKilledTarget")
RegisterUnitEvent(26646, 4, "SaroniteHorror_OnDied")