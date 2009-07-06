--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ShadethicketWoodShaper_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketWoodShaper_EntanglingRoots", 8000, 0)
end

function ShadethicketWoodShaper_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function ShadethicketWoodShaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketWoodShaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketWoodShaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3781, 1, "ShadethicketWoodShaper_OnCombat")
RegisterUnitEvent(3781, 2, "ShadethicketWoodShaper_OnLeaveCombat")
RegisterUnitEvent(3781, 3, "ShadethicketWoodShaper_OnKilledTarget")
RegisterUnitEvent(3781, 4, "ShadethicketWoodShaper_OnDied")