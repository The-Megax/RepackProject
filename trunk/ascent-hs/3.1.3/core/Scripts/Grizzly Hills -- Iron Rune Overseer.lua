--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IronRuneOverseer_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneOverseer_CallLightning", 6000, 0)
end

function IronRuneOverseer_CallLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32018, pUnit:GetMainTank()) 
end

function IronRuneOverseer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneOverseer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneOverseer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27177, 1, "IronRuneOverseer_OnCombat")
RegisterUnitEvent(27177, 2, "IronRuneOverseer_OnLeaveCombat")
RegisterUnitEvent(27177, 3, "IronRuneOverseer_OnKilledTarget")
RegisterUnitEvent(27177, 4, "IronRuneOverseer_OnDied")