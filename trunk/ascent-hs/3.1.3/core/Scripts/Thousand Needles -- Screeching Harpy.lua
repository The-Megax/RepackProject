--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScreechingHarpy_OnCombat(Unit, Event)
Unit:RegisterEvent("ScreechingHarpy_DeafeningScreech", 10000, 0)
end

function ScreechingHarpy_DeafeningScreech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3589, pUnit:GetMainTank()) 
end

function ScreechingHarpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScreechingHarpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScreechingHarpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4100, 1, "ScreechingHarpy_OnCombat")
RegisterUnitEvent(4100, 2, "ScreechingHarpy_OnLeaveCombat")
RegisterUnitEvent(4100, 3, "ScreechingHarpy_OnKilledTarget")
RegisterUnitEvent(4100, 4, "ScreechingHarpy_OnDied")