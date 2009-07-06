--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GreatWavethrasher_OnCombat(Unit, Event)
Unit:RegisterEvent("GreatWavethrasher_Thrash", 5000, 0)
end

function GreatWavethrasher_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function GreatWavethrasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreatWavethrasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreatWavethrasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6349, 1, "GreatWavethrasher_OnCombat")
RegisterUnitEvent(6349, 2, "GreatWavethrasher_OnLeaveCombat")
RegisterUnitEvent(6349, 3, "GreatWavethrasher_OnKilledTarget")
RegisterUnitEvent(6349, 4, "GreatWavethrasher_OnDied")