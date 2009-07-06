--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ElderCloudSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderCloudSerpent_LightningBolt", 8000, 0)
end

function ElderCloudSerpent_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8246, pUnit:GetMainTank()) 
end

function ElderCloudSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderCloudSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderCloudSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4119, 1, "ElderCloudSerpent_OnCombat")
RegisterUnitEvent(4119, 2, "ElderCloudSerpent_OnLeaveCombat")
RegisterUnitEvent(4119, 3, "ElderCloudSerpent_OnKilledTarget")
RegisterUnitEvent(4119, 4, "ElderCloudSerpent_OnDied")