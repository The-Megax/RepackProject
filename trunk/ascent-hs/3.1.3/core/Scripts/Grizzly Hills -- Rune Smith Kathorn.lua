--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RuneSmithKathorn_OnCombat(Unit, Event)
Unit:RegisterEvent("RuneSmithKathorn_LightningCharged", 4000, 1)
end

function RuneSmithKathorn_LightningCharged(pUnit, Event) 
pUnit:CastSpell(52701) 
end

function RuneSmithKathorn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RuneSmithKathorn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RuneSmithKathorn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26410, 1, "RuneSmithKathorn_OnCombat")
RegisterUnitEvent(26410, 2, "RuneSmithKathorn_OnLeaveCombat")
RegisterUnitEvent(26410, 3, "RuneSmithKathorn_OnKilledTarget")
RegisterUnitEvent(26410, 4, "RuneSmithKathorn_OnDied")