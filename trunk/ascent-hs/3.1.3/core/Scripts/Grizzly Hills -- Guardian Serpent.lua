--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GuardianSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("GuardianSerpent_TailLash", 6000, 0)
end

function GuardianSerpent_TailLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34811, pUnit:GetMainTank()) 
end

function GuardianSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GuardianSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GuardianSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26806, 1, "GuardianSerpent_OnCombat")
RegisterUnitEvent(26806, 2, "GuardianSerpent_OnLeaveCombat")
RegisterUnitEvent(26806, 3, "GuardianSerpent_OnKilledTarget")
RegisterUnitEvent(26806, 4, "GuardianSerpent_OnDied")