--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EnkilahGargoyle_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahGargoyle_GargoyleStrike", 6000, 0)
end

function EnkilahGargoyle_GargoyleStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16564, pUnit:GetMainTank()) 
end

function EnkilahGargoyle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahGargoyle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahGargoyle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25387, 1, "EnkilahGargoyle_OnCombat")
RegisterUnitEvent(25387, 2, "EnkilahGargoyle_OnLeaveCombat")
RegisterUnitEvent(25387, 3, "EnkilahGargoyle_OnKilledTarget")
RegisterUnitEvent(25387, 4, "EnkilahGargoyle_OnDied")