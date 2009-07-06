--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EnragedApparition_OnCombat(Unit, Event)
Unit:RegisterEvent("EnragedApparition_Enrage", 10000, 1)
end

function EnragedApparition_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function EnragedApparition_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnragedApparition_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnragedApparition_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27551, 1, "EnragedApparition_OnCombat")
RegisterUnitEvent(27551, 2, "EnragedApparition_OnLeaveCombat")
RegisterUnitEvent(27551, 3, "EnragedApparition_OnKilledTarget")
RegisterUnitEvent(27551, 4, "EnragedApparition_OnDied")