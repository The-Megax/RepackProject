--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OnslaughtRavenArchon_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtRavenArchon_RavenFlock", 7000, 0)
Unit:RegisterEvent("OnslaughtRavenArchon_UnholyFrenzy", 4000, 1)
end

function OnslaughtRavenArchon_RavenFlock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50740, pUnit:GetMainTank()) 
end

function OnslaughtRavenArchon_UnholyFrenzy(pUnit, Event) 
pUnit:CastSpell(50743) 
end

function OnslaughtRavenArchon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtRavenArchon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtRavenArchon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27357, 1, "OnslaughtRavenArchon_OnCombat")
RegisterUnitEvent(27357, 2, "OnslaughtRavenArchon_OnLeaveCombat")
RegisterUnitEvent(27357, 3, "OnslaughtRavenArchon_OnKilledTarget")
RegisterUnitEvent(27357, 4, "OnslaughtRavenArchon_OnDied")