--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SparkleshellBorer_OnCombat(Unit, Event)
Unit:RegisterEvent("SparkleshellBorer_PierceArmor", 10000, 0)
end

function SparkleshellBorer_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function SparkleshellBorer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SparkleshellBorer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SparkleshellBorer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4144, 1, "SparkleshellBorer_OnCombat")
RegisterUnitEvent(4144, 2, "SparkleshellBorer_OnLeaveCombat")
RegisterUnitEvent(4144, 3, "SparkleshellBorer_OnKilledTarget")
RegisterUnitEvent(4144, 4, "SparkleshellBorer_OnDied")