--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RabidGrizzly_OnCombat(Unit, Event)
Unit:RegisterEvent("RabidGrizzly_Rabies", 8000, 0)
end

function RabidGrizzly_Rabies(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51951, pUnit:GetMainTank()) 
end

function RabidGrizzly_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RabidGrizzly_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RabidGrizzly_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26643, 1, "RabidGrizzly_OnCombat")
RegisterUnitEvent(26643, 2, "RabidGrizzly_OnLeaveCombat")
RegisterUnitEvent(26643, 3, "RabidGrizzly_OnKilledTarget")
RegisterUnitEvent(26643, 4, "RabidGrizzly_OnDied")