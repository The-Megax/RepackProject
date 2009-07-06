--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AzureDragon_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureDragon_FrostBreath", 10000, 1)
end

function AzureDragon_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49111, pUnit:GetMainTank()) 
end

function AzureDragon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureDragon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureDragon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27608, 1, "AzureDragon_OnCombat")
RegisterUnitEvent(27608, 2, "AzureDragon_OnLeaveCombat")
RegisterUnitEvent(27608, 3, "AzureDragon_OnKilledTarget")
RegisterUnitEvent(27608, 4, "AzureDragon_OnDied")