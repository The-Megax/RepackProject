--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HezrulBloodmark_OnCombat(Unit, Event)
Unit:RegisterEvent("HezrulBloodmark_BloodLeech", 6000, 0)
end

function HezrulBloodmark_BloodLeech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6958, pUnit:GetMainTank()) 
end

function HezrulBloodmark_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HezrulBloodmark_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HezrulBloodmark_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3396, 1, "HezrulBloodmark_OnCombat")
RegisterUnitEvent(3396, 2, "HezrulBloodmark_OnLeaveCombat")
RegisterUnitEvent(3396, 3, "HezrulBloodmark_OnKilledTarget")
RegisterUnitEvent(3396, 4, "HezrulBloodmark_OnDied")