--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function TaskmasterWhipfang_OnCombat(Unit, Event)
Unit:RegisterEvent("TaskmasterWhipfang_IntimidatingRoar", 12000, 0)
end

function TaskmasterWhipfang_IntimidatingRoar(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16508, pUnit:GetMainTank()) 
end

function TaskmasterWhipfang_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TaskmasterWhipfang_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TaskmasterWhipfang_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5932, 1, "TaskmasterWhipfang_OnCombat")
RegisterUnitEvent(5932, 2, "TaskmasterWhipfang_OnLeaveCombat")
RegisterUnitEvent(5932, 3, "TaskmasterWhipfang_OnKilledTarget")
RegisterUnitEvent(5932, 4, "TaskmasterWhipfang_OnDied")