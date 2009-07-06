--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AngratharAberration_OnCombat(Unit, Event)
Unit:RegisterEvent("AngratharAberration_Enrage", 1000, 1)
end

function AngratharAberration_Enrage(pUnit, Event) 
pUnit:CastSpell(31540) 
end

function AngratharAberration_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AngratharAberration_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AngratharAberration_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27631, 1, "AngratharAberration_OnCombat")
RegisterUnitEvent(27631, 2, "AngratharAberration_OnLeaveCombat")
RegisterUnitEvent(27631, 3, "AngratharAberration_OnKilledTarget")
RegisterUnitEvent(27631, 4, "AngratharAberration_OnDied")