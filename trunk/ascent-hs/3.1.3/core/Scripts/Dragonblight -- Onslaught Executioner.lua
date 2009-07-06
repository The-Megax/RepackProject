--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OnslaughtExecutioner_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtExecutioner_Hamstring", 8000, 0)
Unit:RegisterEvent("OnslaughtExecutioner_MightyBlow", 9000, 0)
end

function OnslaughtExecutioner_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function OnslaughtExecutioner_MightyBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43673, pUnit:GetMainTank()) 
end

function OnslaughtExecutioner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtExecutioner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtExecutioner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27211, 1, "OnslaughtExecutioner_OnCombat")
RegisterUnitEvent(27211, 2, "OnslaughtExecutioner_OnLeaveCombat")
RegisterUnitEvent(27211, 3, "OnslaughtExecutioner_OnKilledTarget")
RegisterUnitEvent(27211, 4, "OnslaughtExecutioner_OnDied")