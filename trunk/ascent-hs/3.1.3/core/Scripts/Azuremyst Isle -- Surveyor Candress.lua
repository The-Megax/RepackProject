--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SurveyorCandress_OnCombat(Unit, Event)
Unit:RegisterEvent("SurveyorCandress_Fireball", 8000, 0)
end

function SurveyorCandress_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9487, pUnit:GetMainTank()) 
end

function SurveyorCandress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SurveyorCandress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SurveyorCandress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(16522, 1, "SurveyorCandress_OnCombat")
RegisterUnitEvent(16522, 2, "SurveyorCandress_OnLeaveCombat")
RegisterUnitEvent(16522, 3, "SurveyorCandress_OnKilledTarget")
RegisterUnitEvent(16522, 4, "SurveyorCandress_OnDied")