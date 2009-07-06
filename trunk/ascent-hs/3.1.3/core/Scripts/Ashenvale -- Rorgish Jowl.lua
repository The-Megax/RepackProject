--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RorgishJowl_OnCombat(Unit, Event)
Unit:RegisterEvent("RorgishJowl_Thrash", 5000, 0)
end

function RorgishJowl_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function RorgishJowl_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RorgishJowl_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RorgishJowl_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10639, 1, "RorgishJowl_OnCombat")
RegisterUnitEvent(10639, 2, "RorgishJowl_OnLeaveCombat")
RegisterUnitEvent(10639, 3, "RorgishJowl_OnKilledTarget")
RegisterUnitEvent(10639, 4, "RorgishJowl_OnDied")