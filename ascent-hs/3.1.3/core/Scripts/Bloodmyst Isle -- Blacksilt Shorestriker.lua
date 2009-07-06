--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BlacksiltShorestriker_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksiltShorestriker_Net", 8000, 0)
end

function BlacksiltShorestriker_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31290, pUnit:GetMainTank()) 
end

function BlacksiltShorestriker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksiltShorestriker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksiltShorestriker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17328, 1, "BlacksiltShorestriker_OnCombat")
RegisterUnitEvent(17328, 2, "BlacksiltShorestriker_OnLeaveCombat")
RegisterUnitEvent(17328, 3, "BlacksiltShorestriker_OnKilledTarget")
RegisterUnitEvent(17328, 4, "BlacksiltShorestriker_OnDied")