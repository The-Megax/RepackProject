--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RockStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("RockStalker_Poison", 8000, 0)
Unit:RegisterEvent("RockStalker_Web", 10000, 0)
end

function RockStalker_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function RockStalker_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetRandomPlayer(0)) 
end

function RockStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RockStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RockStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11739, 1, "RockStalker_OnCombat")
RegisterUnitEvent(11739, 2, "RockStalker_OnLeaveCombat")
RegisterUnitEvent(11739, 3, "RockStalker_OnKilledTarget")
RegisterUnitEvent(11739, 4, "RockStalker_OnDied")