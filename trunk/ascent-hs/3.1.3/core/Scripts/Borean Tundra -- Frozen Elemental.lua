--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FrozenElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("FrozenElemental_IceSpike", 8000, 0)
end

function FrozenElemental_IceSpike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50094, pUnit:GetMainTank()) 
end

function FrozenElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrozenElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrozenElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25715, 1, "FrozenElemental_OnCombat")
RegisterUnitEvent(25715, 2, "FrozenElemental_OnLeaveCombat")
RegisterUnitEvent(25715, 3, "FrozenElemental_OnKilledTarget")
RegisterUnitEvent(25715, 4, "FrozenElemental_OnDied")