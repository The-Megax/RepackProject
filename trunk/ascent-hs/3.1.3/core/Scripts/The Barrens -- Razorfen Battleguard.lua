--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazorfenBattleguard_OnCombat(Unit, Event)
Unit:RegisterEvent("RazorfenBattleguard_Slam", 6000, 0)
end

function RazorfenBattleguard_Slam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11430, pUnit:GetMainTank()) 
end

function RazorfenBattleguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazorfenBattleguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazorfenBattleguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7873, 1, "RazorfenBattleguard_OnCombat")
RegisterUnitEvent(7873, 2, "RazorfenBattleguard_OnLeaveCombat")
RegisterUnitEvent(7873, 3, "RazorfenBattleguard_OnKilledTarget")
RegisterUnitEvent(7873, 4, "RazorfenBattleguard_OnDied")