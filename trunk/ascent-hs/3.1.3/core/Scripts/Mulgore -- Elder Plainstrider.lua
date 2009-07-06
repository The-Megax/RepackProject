--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ElderPlainstrider_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderPlainstrider_DustCloud", 20000, 0)
end

function ElderPlainstrider_DustCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7272, pUnit:GetClosestPlayer()) 
end

function ElderPlainstrider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderPlainstrider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderPlainstrider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2957, 1, "ElderPlainstrider_OnCombat")
RegisterUnitEvent(2957, 2, "ElderPlainstrider_OnLeaveCombat")
RegisterUnitEvent(2957, 3, "ElderPlainstrider_OnKilledTarget")
RegisterUnitEvent(2957, 4, "ElderPlainstrider_OnDied")