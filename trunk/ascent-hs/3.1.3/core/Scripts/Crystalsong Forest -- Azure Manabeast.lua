--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AzureManabeast_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureManabeast_ManaBite", 8000, 0)
end

function AzureManabeast_ManaBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59105, pUnit:GetMainTank()) 
end

function AzureManabeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureManabeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureManabeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31404, 1, "AzureManabeast_OnCombat")
RegisterUnitEvent(31404, 2, "AzureManabeast_OnLeaveCombat")
RegisterUnitEvent(31404, 3, "AzureManabeast_OnKilledTarget")
RegisterUnitEvent(31404, 4, "AzureManabeast_OnDied")