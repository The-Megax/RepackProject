--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SpitelashEnchantress_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashEnchantress_EnchantedQuickness", 10000, 0)
Unit:RegisterEvent("SpitelashEnchantress_FrostShock", 6000, 0)
end

function SpitelashEnchantress_EnchantedQuickness(pUnit, Event) 
pUnit:CastSpell(3443) 
end

function SpitelashEnchantress_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function SpitelashEnchantress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashEnchantress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashEnchantress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7186, 1, "SpitelashEnchantress_OnCombat")
RegisterUnitEvent(7186, 2, "SpitelashEnchantress_OnLeaveCombat")
RegisterUnitEvent(7186, 3, "SpitelashEnchantress_OnKilledTarget")
RegisterUnitEvent(7186, 4, "SpitelashEnchantress_OnDied")