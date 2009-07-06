--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BishopStreet_OnCombat(Unit, Event)
Unit:RegisterEvent("BishopStreet_HolySmite", 5000, 0)
Unit:RegisterEvent("BishopStreet_PowerWordShield", 2000, 1)
end

function BishopStreet_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20820, pUnit:GetMainTank()) 
end

function BishopStreet_PowerWordShield(pUnit, Event) 
pUnit:CastSpell(11974) 
end

function BishopStreet_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BishopStreet_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BishopStreet_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27246, 1, "BishopStreet_OnCombat")
RegisterUnitEvent(27246, 2, "BishopStreet_OnLeaveCombat")
RegisterUnitEvent(27246, 3, "BishopStreet_OnKilledTarget")
RegisterUnitEvent(27246, 4, "BishopStreet_OnDied")