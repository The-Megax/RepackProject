--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HulkingAtrocity_OnCombat(Unit, Event)
Unit:RegisterEvent("HulkingAtrocity_InfectedBite", 7000, 0)
end

function HulkingAtrocity_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49861, pUnit:GetMainTank()) 
end

function HulkingAtrocity_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HulkingAtrocity_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HulkingAtrocity_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26948, 1, "HulkingAtrocity_OnCombat")
RegisterUnitEvent(26948, 2, "HulkingAtrocity_OnLeaveCombat")
RegisterUnitEvent(26948, 3, "HulkingAtrocity_OnKilledTarget")
RegisterUnitEvent(26948, 4, "HulkingAtrocity_OnDied")