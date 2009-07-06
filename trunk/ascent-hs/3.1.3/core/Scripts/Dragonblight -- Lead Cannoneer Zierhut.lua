--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LeadCannoneerZierhut_OnCombat(Unit, Event)
Unit:RegisterEvent("LeadCannoneerZierhut_TorchToss", 2000, 1)
end

function LeadCannoneerZierhut_TorchToss(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50832, pUnit:GetMainTank()) 
end

function LeadCannoneerZierhut_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LeadCannoneerZierhut_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LeadCannoneerZierhut_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27235, 1, "LeadCannoneerZierhut_OnCombat")
RegisterUnitEvent(27235, 2, "LeadCannoneerZierhut_OnLeaveCombat")
RegisterUnitEvent(27235, 3, "LeadCannoneerZierhut_OnKilledTarget")
RegisterUnitEvent(27235, 4, "LeadCannoneerZierhut_OnDied")