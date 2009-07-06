--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RexAshil_OnCombat(Unit, Event)
Unit:RegisterEvent("RexAshil_PierceArmor", 8000, 0)
end

function RexAshil_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12097, pUnit:GetMainTank()) 
end

function RexAshil_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RexAshil_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RexAshil_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14475, 1, "RexAshil_OnCombat")
RegisterUnitEvent(14475, 2, "RexAshil_OnLeaveCombat")
RegisterUnitEvent(14475, 3, "RexAshil_OnKilledTarget")
RegisterUnitEvent(14475, 4, "RexAshil_OnDied")