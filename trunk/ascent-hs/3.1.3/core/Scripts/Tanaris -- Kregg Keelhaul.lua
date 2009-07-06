--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KreggKeelhaul_OnCombat(Unit, Event)
Unit:RegisterEvent("KreggKeelhaul_Cleave", 4000, 0)
Unit:RegisterEvent("KreggKeelhaul_Strike", 6000, 0)
end

function KreggKeelhaul_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function KreggKeelhaul_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function KreggKeelhaul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KreggKeelhaul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KreggKeelhaul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8203, 1, "KreggKeelhaul_OnCombat")
RegisterUnitEvent(8203, 2, "KreggKeelhaul_OnLeaveCombat")
RegisterUnitEvent(8203, 3, "KreggKeelhaul_OnKilledTarget")
RegisterUnitEvent(8203, 4, "KreggKeelhaul_OnDied")