--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BloodtalonScythemaw_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodtalonScythemaw_RushingCharge", 8000, 0)
end

function BloodtalonScythemaw_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function BloodtalonScythemaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodtalonScythemaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodtalonScythemaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3123, 1, "BloodtalonScythemaw_OnCombat")
RegisterUnitEvent(3123, 2, "BloodtalonScythemaw_OnLeaveCombat")
RegisterUnitEvent(3123, 3, "BloodtalonScythemaw_OnKilledTarget")
RegisterUnitEvent(3123, 4, "BloodtalonScythemaw_OnDied")