--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function InfectedGrizzlyBear_OnCombat(Unit, Event)
Unit:RegisterEvent("InfectedGrizzlyBear_InfectedBite", 8000, 0)
end

function InfectedGrizzlyBear_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49861, pUnit:GetMainTank()) 
end

function InfectedGrizzlyBear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfectedGrizzlyBear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfectedGrizzlyBear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26706, 1, "InfectedGrizzlyBear_OnCombat")
RegisterUnitEvent(26706, 2, "InfectedGrizzlyBear_OnLeaveCombat")
RegisterUnitEvent(26706, 3, "InfectedGrizzlyBear_OnKilledTarget")
RegisterUnitEvent(26706, 4, "InfectedGrizzlyBear_OnDied")