--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HighperchConsort_OnCombat(Unit, Event)
Unit:RegisterEvent("HighperchConsort_Poison", 12000, 0)
end

function HighperchConsort_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HighperchConsort_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighperchConsort_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighperchConsort_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4109, 1, "HighperchConsort_OnCombat")
RegisterUnitEvent(4109, 2, "HighperchConsort_OnLeaveCombat")
RegisterUnitEvent(4109, 3, "HighperchConsort_OnKilledTarget")
RegisterUnitEvent(4109, 4, "HighperchConsort_OnDied")