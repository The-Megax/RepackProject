--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LadySesspira_OnCombat(Unit, Event)
Unit:RegisterEvent("LadySesspira_ForkedLightning", 8000, 0)
Unit:RegisterEvent("LadySesspira_Shoot", 6000, 0)
end

function LadySesspira_ForkedLightning(pUnit, Event) 
pUnit:CastSpell(20299) 
end

function LadySesspira_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function LadySesspira_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LadySesspira_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LadySesspira_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6649, 1, "LadySesspira_OnCombat")
RegisterUnitEvent(6649, 2, "LadySesspira_OnLeaveCombat")
RegisterUnitEvent(6649, 3, "LadySesspira_OnKilledTarget")
RegisterUnitEvent(6649, 4, "LadySesspira_OnDied")