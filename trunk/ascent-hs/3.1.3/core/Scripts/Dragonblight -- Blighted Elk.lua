--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BlightedElk_OnCombat(Unit, Event)
Unit:RegisterEvent("BlightedElk_PlagueBlight", 8000, 0)
end

function BlightedElk_PlagueBlight(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43506, pUnit:GetMainTank()) 
end

function BlightedElk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlightedElk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlightedElk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26616, 1, "BlightedElk_OnCombat")
RegisterUnitEvent(26616, 2, "BlightedElk_OnLeaveCombat")
RegisterUnitEvent(26616, 3, "BlightedElk_OnKilledTarget")
RegisterUnitEvent(26616, 4, "BlightedElk_OnDied")