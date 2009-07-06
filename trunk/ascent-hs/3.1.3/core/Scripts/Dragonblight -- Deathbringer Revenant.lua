--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DeathbringerRevenant_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathbringerRevenant_Strangulate", 8000, 0)
end

function DeathbringerRevenant_Strangulate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51131, pUnit:GetMainTank()) 
end

function DeathbringerRevenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathbringerRevenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathbringerRevenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27382, 1, "DeathbringerRevenant_OnCombat")
RegisterUnitEvent(27382, 2, "DeathbringerRevenant_OnLeaveCombat")
RegisterUnitEvent(27382, 3, "DeathbringerRevenant_OnKilledTarget")
RegisterUnitEvent(27382, 4, "DeathbringerRevenant_OnDied")