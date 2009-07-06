--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function PlagueEruptor_OnCombat(Unit, Event)
Unit:RegisterEvent("PlagueEruptor_PlagueCloud", 10000, 0)
end

function PlagueEruptor_PlagueCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49350, pUnit:GetMainTank()) 
end

function PlagueEruptor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PlagueEruptor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PlagueEruptor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27611, 1, "PlagueEruptor_OnCombat")
RegisterUnitEvent(27611, 2, "PlagueEruptor_OnLeaveCombat")
RegisterUnitEvent(27611, 3, "PlagueEruptor_OnKilledTarget")
RegisterUnitEvent(27611, 4, "PlagueEruptor_OnDied")