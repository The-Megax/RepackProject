--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BefouledWaterElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("BefouledWaterElemental_FoulChill", 1000, 2)
Unit:RegisterEvent("BefouledWaterElemental_Frostbolt", 8000, 0)
end

function BefouledWaterElemental_FoulChill(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6873, pUnit:GetMainTank()) 
end

function BefouledWaterElemental_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function BefouledWaterElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BefouledWaterElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BefouledWaterElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3917, 1, "BefouledWaterElemental_OnCombat")
RegisterUnitEvent(3917, 2, "BefouledWaterElemental_OnLeaveCombat")
RegisterUnitEvent(3917, 3, "BefouledWaterElemental_OnKilledTarget")
RegisterUnitEvent(3917, 4, "BefouledWaterElemental_OnDied")