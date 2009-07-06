--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ForgottenCaptain_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenCaptain_Stormhammer", 9000, 0)
end

function ForgottenCaptain_Stormhammer(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51591, pUnit:GetMainTank()) 
end

function ForgottenCaptain_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenCaptain_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenCaptain_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27220, 1, "ForgottenCaptain_OnCombat")
RegisterUnitEvent(27220, 2, "ForgottenCaptain_OnLeaveCombat")
RegisterUnitEvent(27220, 3, "ForgottenCaptain_OnKilledTarget")
RegisterUnitEvent(27220, 4, "ForgottenCaptain_OnDied")