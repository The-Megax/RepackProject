--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SplintertreeRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("SplintertreeRaider_Enrage", 10000, 0)
end

function SplintertreeRaider_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function SplintertreeRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SplintertreeRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SplintertreeRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12859, 1, "SplintertreeRaider_OnCombat")
RegisterUnitEvent(12859, 2, "SplintertreeRaider_OnLeaveCombat")
RegisterUnitEvent(12859, 3, "SplintertreeRaider_OnKilledTarget")
RegisterUnitEvent(12859, 4, "SplintertreeRaider_OnDied")