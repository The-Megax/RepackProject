--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeApprentice_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeApprentice_ShadowBolt", 8000, 0)
Unit:RegisterEvent("BurningBladeApprentice_SummonVoidwalker", 1000, 1)
end

function BurningBladeApprentice_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function BurningBladeApprentice_SummonVoidwalker(pUnit, Event) 
pUnit:CastSpell(12746) 
end

function BurningBladeApprentice_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeApprentice_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeApprentice_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3198, 1, "BurningBladeApprentice_OnCombat")
RegisterUnitEvent(3198, 2, "BurningBladeApprentice_OnLeaveCombat")
RegisterUnitEvent(3198, 3, "BurningBladeApprentice_OnKilledTarget")
RegisterUnitEvent(3198, 4, "BurningBladeApprentice_OnDied")