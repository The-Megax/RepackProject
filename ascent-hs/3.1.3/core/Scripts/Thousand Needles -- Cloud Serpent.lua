--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CloudSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("CloudSerpent_LightningBolt", 8000, 0)
end

function CloudSerpent_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8246, pUnit:GetMainTank()) 
end

function CloudSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CloudSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CloudSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4117, 1, "CloudSerpent_OnCombat")
RegisterUnitEvent(4117, 2, "CloudSerpent_OnLeaveCombat")
RegisterUnitEvent(4117, 3, "CloudSerpent_OnKilledTarget")
RegisterUnitEvent(4117, 4, "CloudSerpent_OnDied")