--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function UndeadMiner_OnCombat(Unit, Event)
Unit:RegisterEvent("UndeadMiner_PunctureWound", 7000, 0)
Unit:RegisterEvent("UndeadMiner_ThrowLantern", 9000, 1)
end

function UndeadMiner_PunctureWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48374, pUnit:GetMainTank()) 
end

function UndeadMiner_ThrowLantern(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52608, pUnit:GetMainTank()) 
end

function UndeadMiner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UndeadMiner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UndeadMiner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26891, 1, "UndeadMiner_OnCombat")
RegisterUnitEvent(26891, 2, "UndeadMiner_OnLeaveCombat")
RegisterUnitEvent(26891, 3, "UndeadMiner_OnKilledTarget")
RegisterUnitEvent(26891, 4, "UndeadMiner_OnDied")