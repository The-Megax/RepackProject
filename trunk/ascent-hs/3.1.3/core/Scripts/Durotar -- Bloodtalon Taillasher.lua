--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BloodtalonTaillasher_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodtalonTaillasher_RushingCharge", 8000, 0)
end

function BloodtalonTaillasher_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function BloodtalonTaillasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodtalonTaillasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodtalonTaillasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3122, 1, "BloodtalonTaillasher_OnCombat")
RegisterUnitEvent(3122, 2, "BloodtalonTaillasher_OnLeaveCombat")
RegisterUnitEvent(3122, 3, "BloodtalonTaillasher_OnKilledTarget")
RegisterUnitEvent(3122, 4, "BloodtalonTaillasher_OnDied")