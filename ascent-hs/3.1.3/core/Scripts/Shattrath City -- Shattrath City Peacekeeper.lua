--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Peacekeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("Peacekeeper_Block", 5000, 0)
end

function Peacekeeper_Block(pUnit, Event) 
pUnit:CastSpell(12169) 
end

function Peacekeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Peacekeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Peacekeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19687, 1, "Peacekeeper_OnCombat")
RegisterUnitEvent(19687, 2, "Peacekeeper_OnLeaveCombat")
RegisterUnitEvent(19687, 3, "Peacekeeper_OnKilledTarget")
RegisterUnitEvent(19687, 4, "Peacekeeper_OnDied")