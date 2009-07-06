--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HiveAshiDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveAshiDefender_Disarm", 9000, 0)
end

function HiveAshiDefender_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function HiveAshiDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveAshiDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveAshiDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11722, 1, "HiveAshiDefender_OnCombat")
RegisterUnitEvent(11722, 2, "HiveAshiDefender_OnLeaveCombat")
RegisterUnitEvent(11722, 3, "HiveAshiDefender_OnKilledTarget")
RegisterUnitEvent(11722, 4, "HiveAshiDefender_OnDied")