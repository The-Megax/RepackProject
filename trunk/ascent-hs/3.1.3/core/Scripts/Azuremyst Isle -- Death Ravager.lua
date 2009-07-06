--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DeathRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathRavager_EnragingBite", 6000, 0)
Unit:RegisterEvent("DeathRavager_Rend", 8000, 0)
end

function DeathRavager_EnragingBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30736, pUnit:GetMainTank()) 
end

function DeathRavager_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function DeathRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17556, 1, "DeathRavager_OnCombat")
RegisterUnitEvent(17556, 2, "DeathRavager_OnLeaveCombat")
RegisterUnitEvent(17556, 3, "DeathRavager_OnKilledTarget")
RegisterUnitEvent(17556, 4, "DeathRavager_OnDied")