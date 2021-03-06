--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GorlocSteamBelcher_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocSteamBelcher_BelchBlast", 7000, 0)
end

function GorlocSteamBelcher_BelchBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50538, pUnit:GetMainTank()) 
end

function GorlocSteamBelcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocSteamBelcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocSteamBelcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25687, 1, "GorlocSteamBelcher_OnCombat")
RegisterUnitEvent(25687, 2, "GorlocSteamBelcher_OnLeaveCombat")
RegisterUnitEvent(25687, 3, "GorlocSteamBelcher_OnKilledTarget")
RegisterUnitEvent(25687, 4, "GorlocSteamBelcher_OnDied")