--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ColdarraWyrmkin_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraWyrmkin_FrostbiteWeapon", 8000, 0)
end

function ColdarraWyrmkin_FrostbiteWeapon(pUnit, Event) 
pUnit:CastSpell(50416) 
end

function ColdarraWyrmkin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraWyrmkin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraWyrmkin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25728, 1, "ColdarraWyrmkin_OnCombat")
RegisterUnitEvent(25728, 2, "ColdarraWyrmkin_OnLeaveCombat")
RegisterUnitEvent(25728, 3, "ColdarraWyrmkin_OnKilledTarget")
RegisterUnitEvent(25728, 4, "ColdarraWyrmkin_OnDied")