--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GoggerRockKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("GoggerRockKeeper_EarthShock", 8000, 0)
end

function GoggerRockKeeper_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13281, pUnit:GetMainTank()) 
end

function GoggerRockKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GoggerRockKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GoggerRockKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11915, 1, "GoggerRockKeeper_OnCombat")
RegisterUnitEvent(11915, 2, "GoggerRockKeeper_OnLeaveCombat")
RegisterUnitEvent(11915, 3, "GoggerRockKeeper_OnKilledTarget")
RegisterUnitEvent(11915, 4, "GoggerRockKeeper_OnDied")