--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ForgottenPeasant_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenPeasant_Bonk", 6000, 0)
end

function ForgottenPeasant_Bonk(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51601, pUnit:GetMainTank()) 
end

function ForgottenPeasant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenPeasant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenPeasant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27226, 1, "ForgottenPeasant_OnCombat")
RegisterUnitEvent(27226, 2, "ForgottenPeasant_OnLeaveCombat")
RegisterUnitEvent(27226, 3, "ForgottenPeasant_OnKilledTarget")
RegisterUnitEvent(27226, 4, "ForgottenPeasant_OnDied")