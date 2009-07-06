--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ArcaneSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("ArcaneSerpent_ArcaneJolt", 8000, 0)
end

function ArcaneSerpent_ArcaneJolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50504, pUnit:GetMainTank()) 
end

function ArcaneSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArcaneSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArcaneSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25721, 1, "ArcaneSerpent_OnCombat")
RegisterUnitEvent(25721, 2, "ArcaneSerpent_OnLeaveCombat")
RegisterUnitEvent(25721, 3, "ArcaneSerpent_OnKilledTarget")
RegisterUnitEvent(25721, 4, "ArcaneSerpent_OnDied")