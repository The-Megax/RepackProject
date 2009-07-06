--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function EnragedRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("EnragedRavager_Enrage", 10000, 1)
Unit:RegisterEvent("EnragedRavager_Ravage", 8000, 0)
end

function EnragedRavager_Enrage(pUnit, Event) 
pUnit:CastSpell(15716) 
end

function EnragedRavager_Ravage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3242, pUnit:GetMainTank()) 
end

function EnragedRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnragedRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnragedRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17527, 1, "EnragedRavager_OnCombat")
RegisterUnitEvent(17527, 2, "EnragedRavager_OnLeaveCombat")
RegisterUnitEvent(17527, 3, "EnragedRavager_OnKilledTarget")
RegisterUnitEvent(17527, 4, "EnragedRavager_OnDied")