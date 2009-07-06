--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodmoonServant_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodmoonServant_Enrage", 10000, 0)
end

function BloodmoonServant_Enrage(pUnit, Event) 
pUnit:CastSpell(32714) 
end

function BloodmoonServant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodmoonServant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodmoonServant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(29082, 1, "BloodmoonServant_OnCombat")
RegisterUnitEvent(29082, 2, "BloodmoonServant_OnLeaveCombat")
RegisterUnitEvent(29082, 3, "BloodmoonServant_OnKilledTarget")
RegisterUnitEvent(29082, 4, "BloodmoonServant_OnDied")