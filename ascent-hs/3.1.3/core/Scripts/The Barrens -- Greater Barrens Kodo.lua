--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GreaterBarrensKodo_OnCombat(Unit, Event)
Unit:RegisterEvent("GreaterBarrensKodo_RushingCharge", 8000, 0)
end

function GreaterBarrensKodo_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GreaterBarrensKodo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreaterBarrensKodo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreaterBarrensKodo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3235, 1, "GreaterBarrensKodo_OnCombat")
RegisterUnitEvent(3235, 2, "GreaterBarrensKodo_OnLeaveCombat")
RegisterUnitEvent(3235, 3, "GreaterBarrensKodo_OnKilledTarget")
RegisterUnitEvent(3235, 4, "GreaterBarrensKodo_OnDied")