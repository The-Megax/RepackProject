--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Churn_OnCombat(Unit, Event)
Unit:RegisterEvent("Churn_ScaldingSteam", 8000, 0)
end

function Churn_ScaldingSteam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50206, pUnit:GetMainTank()) 
end

function Churn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Churn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Churn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25418, 1, "Churn_OnCombat")
RegisterUnitEvent(25418, 2, "Churn_OnLeaveCombat")
RegisterUnitEvent(25418, 3, "Churn_OnKilledTarget")
RegisterUnitEvent(25418, 4, "Churn_OnDied")