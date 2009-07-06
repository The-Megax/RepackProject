--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DunemaulWarlock_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulWarlock_Shadowbolt", 8000, 0)
end

function DunemaulWarlock_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function DunemaulWarlock_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulWarlock_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulWarlock_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5475, 1, "DunemaulWarlock_OnCombat")
RegisterUnitEvent(5475, 2, "DunemaulWarlock_OnLeaveCombat")
RegisterUnitEvent(5475, 3, "DunemaulWarlock_OnKilledTarget")
RegisterUnitEvent(5475, 4, "DunemaulWarlock_OnDied")