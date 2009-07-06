--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Snagglespear_OnCombat(Unit, Event)
Unit:RegisterEvent("Snagglespear_Net", 10000, 0)
end

function Snagglespear_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function Snagglespear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Snagglespear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Snagglespear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5786, 1, "Snagglespear_OnCombat")
RegisterUnitEvent(5786, 2, "Snagglespear_OnLeaveCombat")
RegisterUnitEvent(5786, 3, "Snagglespear_OnKilledTarget")
RegisterUnitEvent(5786, 4, "Snagglespear_OnDied")