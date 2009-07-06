--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FamishedScourgeTroll_OnCombat(Unit, Event)
Unit:RegisterEvent("FamishedScourgeTroll_Suicide", 30000, 1)
end

function FamishedScourgeTroll_Suicide(pUnit, Event) 
pUnit:CastSpell(7) 
end

function FamishedScourgeTroll_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FamishedScourgeTroll_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FamishedScourgeTroll_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26570, 1, "FamishedScourgeTroll_OnCombat")
RegisterUnitEvent(26570, 2, "FamishedScourgeTroll_OnLeaveCombat")
RegisterUnitEvent(26570, 3, "FamishedScourgeTroll_OnKilledTarget")
RegisterUnitEvent(26570, 4, "FamishedScourgeTroll_OnDied")