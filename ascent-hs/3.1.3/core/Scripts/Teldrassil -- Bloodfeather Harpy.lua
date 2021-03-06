--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodfeatherHarpy_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherHarpy_BloodLeech", 6000, 0)
end

function BloodfeatherHarpy_BloodLeech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6958, pUnit:GetMainTank()) 
end

function BloodfeatherHarpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherHarpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherHarpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2015, 1, "BloodfeatherHarpy_OnCombat")
RegisterUnitEvent(2015, 2, "BloodfeatherHarpy_OnLeaveCombat")
RegisterUnitEvent(2015, 3, "BloodfeatherHarpy_OnKilledTarget")
RegisterUnitEvent(2015, 4, "BloodfeatherHarpy_OnDied")