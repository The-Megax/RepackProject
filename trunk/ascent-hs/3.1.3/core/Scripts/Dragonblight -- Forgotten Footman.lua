--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ForgottenFootman_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenFootman_ShieldBlock", 5000, 0)
end

function ForgottenFootman_ShieldBlock(pUnit, Event) 
pUnit:CastSpell(32587) 
end

function ForgottenFootman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenFootman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenFootman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27229, 1, "ForgottenFootman_OnCombat")
RegisterUnitEvent(27229, 2, "ForgottenFootman_OnLeaveCombat")
RegisterUnitEvent(27229, 3, "ForgottenFootman_OnKilledTarget")
RegisterUnitEvent(27229, 4, "ForgottenFootman_OnDied")