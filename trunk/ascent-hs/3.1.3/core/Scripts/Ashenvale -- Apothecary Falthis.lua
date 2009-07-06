--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ApothecaryFalthis_OnCombat(Unit, Event)
Unit:RegisterEvent("ApothecaryFalthis_ShadowBolt", 8000, 0)
end

function ApothecaryFalthis_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function ApothecaryFalthis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ApothecaryFalthis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ApothecaryFalthis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3735, 1, "ApothecaryFalthis_OnCombat")
RegisterUnitEvent(3735, 2, "ApothecaryFalthis_OnLeaveCombat")
RegisterUnitEvent(3735, 3, "ApothecaryFalthis_OnKilledTarget")
RegisterUnitEvent(3735, 4, "ApothecaryFalthis_OnDied")