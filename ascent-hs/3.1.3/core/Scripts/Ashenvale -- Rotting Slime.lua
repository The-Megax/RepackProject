--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RottingSlime_OnCombat(Unit, Event)
Unit:RegisterEvent("RottingSlime_DiseasedSlime", 10000, 0)
end

function RottingSlime_DiseasedSlime(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6907, pUnit:GetMainTank()) 
end

function RottingSlime_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RottingSlime_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RottingSlime_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3928, 1, "RottingSlime_OnCombat")
RegisterUnitEvent(3928, 2, "RottingSlime_OnLeaveCombat")
RegisterUnitEvent(3928, 3, "RottingSlime_OnKilledTarget")
RegisterUnitEvent(3928, 4, "RottingSlime_OnDied")