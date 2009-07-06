--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Zarakh_OnCombat(Unit, Event)
Unit:RegisterEvent("Zarakh_Poison", 8000, 0)
Unit:RegisterEvent("Zarakh_Web", 10000, 0)
end

function Zarakh_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function Zarakh_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetMainTank()) 
end

function Zarakh_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Zarakh_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Zarakh_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17683, 1, "Zarakh_OnCombat")
RegisterUnitEvent(17683, 2, "Zarakh_OnLeaveCombat")
RegisterUnitEvent(17683, 3, "Zarakh_OnKilledTarget")
RegisterUnitEvent(17683, 4, "Zarakh_OnDied")