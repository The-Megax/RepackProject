--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HarvestCollector_OnCombat(Unit, Event)
Unit:RegisterEvent("HarvestCollector_ClawSlash", 6000, 0)
end

function HarvestCollector_ClawSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(54185, pUnit:GetMainTank()) 
end

function HarvestCollector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HarvestCollector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HarvestCollector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25623, 1, "HarvestCollector_OnCombat")
RegisterUnitEvent(25623, 2, "HarvestCollector_OnLeaveCombat")
RegisterUnitEvent(25623, 3, "HarvestCollector_OnKilledTarget")
RegisterUnitEvent(25623, 4, "HarvestCollector_OnDied")