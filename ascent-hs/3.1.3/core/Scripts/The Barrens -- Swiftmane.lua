--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Swiftmane_OnCombat(Unit, Event)
Unit:RegisterEvent("Swiftmane_PierceArmor", 10000, 0)
end

function Swiftmane_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function Swiftmane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Swiftmane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Swiftmane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5831, 1, "Swiftmane_OnCombat")
RegisterUnitEvent(5831, 2, "Swiftmane_OnLeaveCombat")
RegisterUnitEvent(5831, 3, "Swiftmane_OnKilledTarget")
RegisterUnitEvent(5831, 4, "Swiftmane_OnDied")