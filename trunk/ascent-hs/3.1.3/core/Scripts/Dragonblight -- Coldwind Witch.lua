--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ColdwindWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdwindWitch_ColdwindBlast", 7000, 0)
end

function ColdwindWitch_ColdwindBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51877, pUnit:GetMainTank()) 
end

function ColdwindWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdwindWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdwindWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26577, 1, "ColdwindWitch_OnCombat")
RegisterUnitEvent(26577, 2, "ColdwindWitch_OnLeaveCombat")
RegisterUnitEvent(26577, 3, "ColdwindWitch_OnKilledTarget")
RegisterUnitEvent(26577, 4, "ColdwindWitch_OnDied")