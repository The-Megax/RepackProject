--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ForestOoze_OnCombat(Unit, Event)
Unit:RegisterEvent("ForestOoze_DiseasedSlime", 2000, 2)
end

function ForestOoze_DiseasedSlime(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6907, pUnit:GetMainTank()) 
end

function ForestOoze_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForestOoze_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForestOoze_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8766, 1, "ForestOoze_OnCombat")
RegisterUnitEvent(8766, 2, "ForestOoze_OnLeaveCombat")
RegisterUnitEvent(8766, 3, "ForestOoze_OnKilledTarget")
RegisterUnitEvent(8766, 4, "ForestOoze_OnDied")