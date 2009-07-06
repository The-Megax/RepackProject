--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EnragedTempest_OnCombat(Unit, Event)
Unit:RegisterEvent("EnragedTempest_Enrage", 10000, 0)
Unit:RegisterEvent("EnragedTempest_Zephyr", 9000, 1)
end

function EnragedTempest_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function EnragedTempest_Zephyr(pUnit, Event) 
pUnit:CastSpell(50215) 
end

function EnragedTempest_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnragedTempest_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnragedTempest_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25415, 1, "EnragedTempest_OnCombat")
RegisterUnitEvent(25415, 2, "EnragedTempest_OnLeaveCombat")
RegisterUnitEvent(25415, 3, "EnragedTempest_OnKilledTarget")
RegisterUnitEvent(25415, 4, "EnragedTempest_OnDied")