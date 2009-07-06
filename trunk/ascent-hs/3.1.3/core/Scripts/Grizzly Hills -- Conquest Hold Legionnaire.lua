--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ConquestHoldLegionnaire_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldLegionnaire_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("ConquestHoldLegionnaire_Hamstring", 10000, 0)
end

function ConquestHoldLegionnaire_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(61044) 
end

function ConquestHoldLegionnaire_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function ConquestHoldLegionnaire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldLegionnaire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldLegionnaire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26839, 1, "ConquestHoldLegionnaire_OnCombat")
RegisterUnitEvent(26839, 2, "ConquestHoldLegionnaire_OnLeaveCombat")
RegisterUnitEvent(26839, 3, "ConquestHoldLegionnaire_OnKilledTarget")
RegisterUnitEvent(26839, 4, "ConquestHoldLegionnaire_OnDied")