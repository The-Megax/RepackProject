--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeInvoker_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeInvoker_FlameBuffet", 8000, 0)
end

function BurningBladeInvoker_FlameBuffet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9658, pUnit:GetMainTank()) 
end

function BurningBladeInvoker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeInvoker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeInvoker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4705, 1, "BurningBladeInvoker_OnCombat")
RegisterUnitEvent(4705, 2, "BurningBladeInvoker_OnLeaveCombat")
RegisterUnitEvent(4705, 3, "BurningBladeInvoker_OnKilledTarget")
RegisterUnitEvent(4705, 4, "BurningBladeInvoker_OnDied")