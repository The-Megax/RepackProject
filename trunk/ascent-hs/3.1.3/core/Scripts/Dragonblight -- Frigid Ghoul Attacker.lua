--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FrigidGhoulAttacker_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidGhoulAttacker_RotArmor", 8000, 0)
end

function FrigidGhoulAttacker_RotArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50361, pUnit:GetMainTank()) 
end

function FrigidGhoulAttacker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidGhoulAttacker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidGhoulAttacker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27685, 1, "FrigidGhoulAttacker_OnCombat")
RegisterUnitEvent(27685, 2, "FrigidGhoulAttacker_OnLeaveCombat")
RegisterUnitEvent(27685, 3, "FrigidGhoulAttacker_OnKilledTarget")
RegisterUnitEvent(27685, 4, "FrigidGhoulAttacker_OnDied")