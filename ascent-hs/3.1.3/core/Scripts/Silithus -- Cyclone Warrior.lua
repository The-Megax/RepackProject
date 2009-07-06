--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CycloneWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("CycloneWarrior_Shock", 6000, 0)
end

function CycloneWarrior_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12553, pUnit:GetMainTank()) 
end

function CycloneWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CycloneWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CycloneWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11745, 1, "CycloneWarrior_OnCombat")
RegisterUnitEvent(11745, 2, "CycloneWarrior_OnLeaveCombat")
RegisterUnitEvent(11745, 3, "CycloneWarrior_OnKilledTarget")
RegisterUnitEvent(11745, 4, "CycloneWarrior_OnDied")