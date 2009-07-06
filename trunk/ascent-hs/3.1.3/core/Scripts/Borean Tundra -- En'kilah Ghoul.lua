--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EnkilahGhoul_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahGhoul_FleshRip", 8000, 0)
end

function EnkilahGhoul_FleshRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38056, pUnit:GetMainTank()) 
end

function EnkilahGhoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahGhoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahGhoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25393, 1, "EnkilahGhoul_OnCombat")
RegisterUnitEvent(25393, 2, "EnkilahGhoul_OnLeaveCombat")
RegisterUnitEvent(25393, 3, "EnkilahGhoul_OnKilledTarget")
RegisterUnitEvent(25393, 4, "EnkilahGhoul_OnDied")