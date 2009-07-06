--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Sharptalon_OnCombat(Unit, Event)
Unit:RegisterEvent("Sharptalon_PierceArmor", 6000, 0)
end

function Sharptalon_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12097, pUnit:GetMainTank()) 
end

function Sharptalon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sharptalon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sharptalon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12676, 1, "Sharptalon_OnCombat")
RegisterUnitEvent(12676, 2, "Sharptalon_OnLeaveCombat")
RegisterUnitEvent(12676, 3, "Sharptalon_OnKilledTarget")
RegisterUnitEvent(12676, 4, "Sharptalon_OnDied")