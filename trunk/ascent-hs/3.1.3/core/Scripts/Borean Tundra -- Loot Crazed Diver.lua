--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LootCrazedDiver_OnCombat(Unit, Event)
Unit:RegisterEvent("LootCrazedDiver_Crazed", 5000, 1)
end

function LootCrazedDiver_Crazed(pUnit, Event) 
pUnit:CastSpell(5915) 
end

function LootCrazedDiver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LootCrazedDiver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LootCrazedDiver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25836, 1, "LootCrazedDiver_OnCombat")
RegisterUnitEvent(25836, 2, "LootCrazedDiver_OnLeaveCombat")
RegisterUnitEvent(25836, 3, "LootCrazedDiver_OnKilledTarget")
RegisterUnitEvent(25836, 4, "LootCrazedDiver_OnDied")