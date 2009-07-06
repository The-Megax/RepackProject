--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AzureDrake_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureDrake_FrostBreath", 10000, 1)
end

function AzureDrake_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49111, pUnit:GetMainTank()) 
end

function AzureDrake_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureDrake_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureDrake_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27682, 1, "AzureDrake_OnCombat")
RegisterUnitEvent(27682, 2, "AzureDrake_OnLeaveCombat")
RegisterUnitEvent(27682, 3, "AzureDrake_OnKilledTarget")
RegisterUnitEvent(27682, 4, "AzureDrake_OnDied")