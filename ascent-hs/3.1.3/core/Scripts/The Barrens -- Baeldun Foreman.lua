--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BaeldunForeman_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunForeman_TorchToss", 8000, 0)
end

function BaeldunForeman_TorchToss(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6257, pUnit:GetMainTank()) 
end

function BaeldunForeman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunForeman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunForeman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3375, 1, "BaeldunForeman_OnCombat")
RegisterUnitEvent(3375, 2, "BaeldunForeman_OnLeaveCombat")
RegisterUnitEvent(3375, 3, "BaeldunForeman_OnKilledTarget")
RegisterUnitEvent(3375, 4, "BaeldunForeman_OnDied")