--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AzureSpellweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureSpellweaver_ArcaneMissiles", 6000, 0)
end

function AzureSpellweaver_ArcaneMissiles(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34447, pUnit:GetMainTank()) 
end

function AzureSpellweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureSpellweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureSpellweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31403, 1, "AzureSpellweaver_OnCombat")
RegisterUnitEvent(31403, 2, "AzureSpellweaver_OnLeaveCombat")
RegisterUnitEvent(31403, 3, "AzureSpellweaver_OnKilledTarget")
RegisterUnitEvent(31403, 4, "AzureSpellweaver_OnDied")