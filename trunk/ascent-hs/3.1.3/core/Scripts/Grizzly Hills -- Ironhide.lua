--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Ironhide_OnCombat(Unit, Event)
Unit:RegisterEvent("Ironhide_Charge", 10000, 0)
Unit:RegisterEvent("Ironhide_Maul", 6000, 0)
Unit:RegisterEvent("Ironhide_Swipe", 5000, 0)
end

function Ironhide_Charge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32323, pUnit:GetMainTank()) 
end

function Ironhide_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34298, pUnit:GetMainTank()) 
end

function Ironhide_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31279, pUnit:GetMainTank()) 
end

function Ironhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Ironhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Ironhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27715, 1, "Ironhide_OnCombat")
RegisterUnitEvent(27715, 2, "Ironhide_OnLeaveCombat")
RegisterUnitEvent(27715, 3, "Ironhide_OnKilledTarget")
RegisterUnitEvent(27715, 4, "Ironhide_OnDied")