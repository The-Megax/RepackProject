--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SparkleshellSnapper_OnCombat(Unit, Event)
Unit:RegisterEvent("SparkleshellSnapper_HeadButt", 10000, 0)
end

function SparkleshellSnapper_HeadButt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6730, pUnit:GetClosestPlayer()) 
end

function SparkleshellSnapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SparkleshellSnapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SparkleshellSnapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4143, 1, "SparkleshellSnapper_OnCombat")
RegisterUnitEvent(4143, 2, "SparkleshellSnapper_OnLeaveCombat")
RegisterUnitEvent(4143, 3, "SparkleshellSnapper_OnKilledTarget")
RegisterUnitEvent(4143, 4, "SparkleshellSnapper_OnDied")