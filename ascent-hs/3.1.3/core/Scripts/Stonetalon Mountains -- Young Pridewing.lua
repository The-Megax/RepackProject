--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function YoungPridewing_OnCombat(Unit, Event)
Unit:RegisterEvent("YoungPridewing_Poison", 10000, 0)
end

function YoungPridewing_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function YoungPridewing_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function YoungPridewing_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function YoungPridewing_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4005, 1, "YoungPridewing_OnCombat")
RegisterUnitEvent(4005, 2, "YoungPridewing_OnLeaveCombat")
RegisterUnitEvent(4005, 3, "YoungPridewing_OnKilledTarget")
RegisterUnitEvent(4005, 4, "YoungPridewing_OnDied")