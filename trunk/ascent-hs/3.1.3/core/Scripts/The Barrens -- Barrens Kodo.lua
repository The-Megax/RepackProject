--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BarrensKodo_OnCombat(Unit, Event)
Unit:RegisterEvent("BarrensKodo_KodoStomp", 6000, 0)
end

function BarrensKodo_KodoStomp(pUnit, Event) 
pUnit:CastSpell(6266) 
end

function BarrensKodo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BarrensKodo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BarrensKodo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3236, 1, "BarrensKodo_OnCombat")
RegisterUnitEvent(3236, 2, "BarrensKodo_OnLeaveCombat")
RegisterUnitEvent(3236, 3, "BarrensKodo_OnKilledTarget")
RegisterUnitEvent(3236, 4, "BarrensKodo_OnDied")