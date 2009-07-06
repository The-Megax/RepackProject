--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CorruptedBloodtalonScythemaw_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedBloodtalonScythemaw_RushingCharge", 8000, 0)
end

function CorruptedBloodtalonScythemaw_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function CorruptedBloodtalonScythemaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedBloodtalonScythemaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedBloodtalonScythemaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3227, 1, "CorruptedBloodtalonScythemaw_OnCombat")
RegisterUnitEvent(3227, 2, "CorruptedBloodtalonScythemaw_OnLeaveCombat")
RegisterUnitEvent(3227, 3, "CorruptedBloodtalonScythemaw_OnKilledTarget")
RegisterUnitEvent(3227, 4, "CorruptedBloodtalonScythemaw_OnDied")