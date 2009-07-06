--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BaeldunExcavator_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunExcavator_DefensiveStance", 1000, 1)
Unit:RegisterEvent("BaeldunExcavator_SunderArmor", 5000, 0)
end

function BaeldunExcavator_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function BaeldunExcavator_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21081, pUnit:GetMainTank()) 
end

function BaeldunExcavator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunExcavator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunExcavator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3374, 1, "BaeldunExcavator_OnCombat")
RegisterUnitEvent(3374, 2, "BaeldunExcavator_OnLeaveCombat")
RegisterUnitEvent(3374, 3, "BaeldunExcavator_OnKilledTarget")
RegisterUnitEvent(3374, 4, "BaeldunExcavator_OnDied")