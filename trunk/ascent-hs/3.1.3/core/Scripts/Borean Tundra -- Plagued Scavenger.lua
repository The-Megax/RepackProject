--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function PlaguedScavengerr_OnCombat(Unit, Event)
Unit:RegisterEvent("PlaguedScavengerr_InfectedBite", 10000, 0)
end

function PlaguedScavengerr_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49861, pUnit:GetMainTank()) 
end

function PlaguedScavengerr_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PlaguedScavengerr_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PlaguedScavengerr_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25650, 1, "PlaguedScavengerr_OnCombat")
RegisterUnitEvent(25650, 2, "PlaguedScavengerr_OnLeaveCombat")
RegisterUnitEvent(25650, 3, "PlaguedScavengerr_OnKilledTarget")
RegisterUnitEvent(25650, 4, "PlaguedScavengerr_OnDied")