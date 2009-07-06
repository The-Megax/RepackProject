--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VenomousCloudSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("VenomousCloudSerpent_DeadlyPoison", 10000, 0)
end

function VenomousCloudSerpent_DeadlyPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3583, pUnit:GetMainTank()) 
end

function VenomousCloudSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VenomousCloudSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VenomousCloudSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4118, 1, "VenomousCloudSerpent_OnCombat")
RegisterUnitEvent(4118, 2, "VenomousCloudSerpent_OnLeaveCombat")
RegisterUnitEvent(4118, 3, "VenomousCloudSerpent_OnKilledTarget")
RegisterUnitEvent(4118, 4, "VenomousCloudSerpent_OnDied")