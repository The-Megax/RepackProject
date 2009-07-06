--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CorruptedRager_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedRager_CorrodeArmor", 8000, 0)
end

function CorruptedRager_CorrodeArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51613, pUnit:GetMainTank()) 
end

function CorruptedRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21223, 1, "CorruptedRager_OnCombat")
RegisterUnitEvent(21223, 2, "CorruptedRager_OnLeaveCombat")
RegisterUnitEvent(21223, 3, "CorruptedRager_OnKilledTarget")
RegisterUnitEvent(21223, 4, "CorruptedRager_OnDied")