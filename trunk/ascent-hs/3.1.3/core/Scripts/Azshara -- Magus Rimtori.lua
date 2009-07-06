--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MagusRimtori_OnCombat(Unit, Event)
Unit:RegisterEvent("MagusRimtori_Fireball", 8000, 0)
Unit:RegisterEvent("MagusRimtori_FrostNova", 10000, 0)
end

function MagusRimtori_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20823, pUnit:GetMainTank()) 
end

function MagusRimtori_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function MagusRimtori_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagusRimtori_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagusRimtori_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8578, 1, "MagusRimtori_OnCombat")
RegisterUnitEvent(8578, 2, "MagusRimtori_OnLeaveCombat")
RegisterUnitEvent(8578, 3, "MagusRimtori_OnKilledTarget")
RegisterUnitEvent(8578, 4, "MagusRimtori_OnDied")