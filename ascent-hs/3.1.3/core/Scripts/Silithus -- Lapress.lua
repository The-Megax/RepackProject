--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Lapress_OnCombat(Unit, Event)
Unit:RegisterEvent("Lapress_Rend", 8000, 0)
end

function Lapress_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13455, pUnit:GetMainTank()) 
end

function Lapress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Lapress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Lapress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14473, 1, "Lapress_OnCombat")
RegisterUnitEvent(14473, 2, "Lapress_OnLeaveCombat")
RegisterUnitEvent(14473, 3, "Lapress_OnKilledTarget")
RegisterUnitEvent(14473, 4, "Lapress_OnDied")