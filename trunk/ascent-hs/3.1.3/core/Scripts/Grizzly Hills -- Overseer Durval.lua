--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OverseerDurval_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerDurval_RuneofDestruction", 8000, 0)
end

function OverseerDurval_RuneofDestruction(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52715, pUnit:GetMainTank()) 
end

function OverseerDurval_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerDurval_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerDurval_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26920, 1, "OverseerDurval_OnCombat")
RegisterUnitEvent(26920, 2, "OverseerDurval_OnLeaveCombat")
RegisterUnitEvent(26920, 3, "OverseerDurval_OnKilledTarget")
RegisterUnitEvent(26920, 4, "OverseerDurval_OnDied")