--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function YoungWavethrasher_OnCombat(Unit, Event)
Unit:RegisterEvent("YoungWavethrasher_Thrash", 5000, 0)
end

function YoungWavethrasher_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function YoungWavethrasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function YoungWavethrasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function YoungWavethrasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6347, 1, "YoungWavethrasher_OnCombat")
RegisterUnitEvent(6347, 2, "YoungWavethrasher_OnLeaveCombat")
RegisterUnitEvent(6347, 3, "YoungWavethrasher_OnKilledTarget")
RegisterUnitEvent(6347, 4, "YoungWavethrasher_OnDied")