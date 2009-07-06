--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Magister_OnCombat(Unit, Event)
Unit:RegisterEvent("Magister_Fireball", 6000, 0)
Unit:RegisterEvent("Magister_Surge", 10000, 0)
end

function Magister_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function Magister_Surge(pUnit, Event) 
pUnit:CastSpell(35778) 
end

function Magister_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Magister_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Magister_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18855, 1, "Magister_OnCombat")
RegisterUnitEvent(18855, 2, "Magister_OnLeaveCombat")
RegisterUnitEvent(18855, 3, "Magister_OnKilledTarget")
RegisterUnitEvent(18855, 4, "Magister_OnDied")