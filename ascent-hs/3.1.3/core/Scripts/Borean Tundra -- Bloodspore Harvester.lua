--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodsporeHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodsporeHarvester_BloodsporeHaze", 10000, 0)
end

function BloodsporeHarvester_BloodsporeHaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50380, pUnit:GetMainTank()) 
end

function BloodsporeHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodsporeHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodsporeHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25467, 1, "BloodsporeHarvester_OnCombat")
RegisterUnitEvent(25467, 2, "BloodsporeHarvester_OnLeaveCombat")
RegisterUnitEvent(25467, 3, "BloodsporeHarvester_OnKilledTarget")
RegisterUnitEvent(25467, 4, "BloodsporeHarvester_OnDied")