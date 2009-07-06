--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IronThaneFuryhammer_OnCombat(Unit, Event)
Unit:RegisterEvent("IronThaneFuryhammer_Furyhammer", 8000, 0)
Unit:RegisterEvent("IronThaneFuryhammer_FuryhammersImmunity", 15000, 1)
end

function IronThaneFuryhammer_Furyhammer(pUnit, Event) 
pUnit:CastSpell(61576) 
end

function IronThaneFuryhammer_FuryhammersImmunity(pUnit, Event) 
pUnit:CastSpell(47922) 
end

function IronThaneFuryhammer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronThaneFuryhammer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronThaneFuryhammer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26405, 1, "IronThaneFuryhammer_OnCombat")
RegisterUnitEvent(26405, 2, "IronThaneFuryhammer_OnLeaveCombat")
RegisterUnitEvent(26405, 3, "IronThaneFuryhammer_OnKilledTarget")
RegisterUnitEvent(26405, 4, "IronThaneFuryhammer_OnDied")