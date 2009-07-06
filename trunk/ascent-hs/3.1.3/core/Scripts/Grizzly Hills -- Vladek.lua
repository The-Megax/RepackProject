--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Vladek_OnCombat(Unit, Event)
Unit:RegisterEvent("Vladek_Enrage", 10000, 0)
end

function Vladek_Enrage(pUnit, Event) 
pUnit:CastSpell(32714) 
end

function Vladek_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Vladek_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Vladek_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27547, 1, "Vladek_OnCombat")
RegisterUnitEvent(27547, 2, "Vladek_OnLeaveCombat")
RegisterUnitEvent(27547, 3, "Vladek_OnKilledTarget")
RegisterUnitEvent(27547, 4, "Vladek_OnDied")