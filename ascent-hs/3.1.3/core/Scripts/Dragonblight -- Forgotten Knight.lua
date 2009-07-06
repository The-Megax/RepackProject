--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ForgottenKnight_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenKnight_Throw", 5000, 0)
end

function ForgottenKnight_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38556, pUnit:GetMainTank()) 
end

function ForgottenKnight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenKnight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenKnight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27224, 1, "ForgottenKnight_OnCombat")
RegisterUnitEvent(27224, 2, "ForgottenKnight_OnLeaveCombat")
RegisterUnitEvent(27224, 3, "ForgottenKnight_OnKilledTarget")
RegisterUnitEvent(27224, 4, "ForgottenKnight_OnDied")