--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AlanuraFirecloud_OnCombat(Unit, Event)
Unit:RegisterEvent("AlanuraFirecloud_FieryIntellect", 2000, 1)
end

function AlanuraFirecloud_FieryIntellect(pUnit, Event) 
pUnit:CastSpell(35917) 
end

function AlanuraFirecloud_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AlanuraFirecloud_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AlanuraFirecloud_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30239, 1, "AlanuraFirecloud_OnCombat")
RegisterUnitEvent(30239, 2, "AlanuraFirecloud_OnLeaveCombat")
RegisterUnitEvent(30239, 3, "AlanuraFirecloud_OnKilledTarget")
RegisterUnitEvent(30239, 4, "AlanuraFirecloud_OnDied")