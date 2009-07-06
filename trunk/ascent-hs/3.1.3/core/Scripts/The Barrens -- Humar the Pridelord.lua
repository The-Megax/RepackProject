--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HumarthePridelord_OnCombat(Unit, Event)
Unit:RegisterEvent("HumarthePridelord_AgonizingPain", 10000, 0)
end

function HumarthePridelord_AgonizingPain(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3247, pUnit:GetMainTank()) 
end

function HumarthePridelord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HumarthePridelord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HumarthePridelord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5828, 1, "HumarthePridelord_OnCombat")
RegisterUnitEvent(5828, 2, "HumarthePridelord_OnLeaveCombat")
RegisterUnitEvent(5828, 3, "HumarthePridelord_OnKilledTarget")
RegisterUnitEvent(5828, 4, "HumarthePridelord_OnDied")