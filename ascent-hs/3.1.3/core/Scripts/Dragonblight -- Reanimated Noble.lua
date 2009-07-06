--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ReanimatedNoble_OnCombat(Unit, Event)
Unit:RegisterEvent("ReanimatedNoble_SanguineStrike", 8000, 0)
end

function ReanimatedNoble_SanguineStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51285, pUnit:GetMainTank()) 
end

function ReanimatedNoble_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReanimatedNoble_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReanimatedNoble_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27552, 1, "ReanimatedNoble_OnCombat")
RegisterUnitEvent(27552, 2, "ReanimatedNoble_OnLeaveCombat")
RegisterUnitEvent(27552, 3, "ReanimatedNoble_OnKilledTarget")
RegisterUnitEvent(27552, 4, "ReanimatedNoble_OnDied")