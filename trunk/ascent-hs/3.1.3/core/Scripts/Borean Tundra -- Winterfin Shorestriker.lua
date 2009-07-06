--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WinterfinShorestriker_OnCombat(Unit, Event)
Unit:RegisterEvent("WinterfinShorestriker_RushedAssault", 7000, 0)
end

function WinterfinShorestriker_RushedAssault(pUnit, Event) 
pUnit:CastSpell(50262) 
end

function WinterfinShorestriker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WinterfinShorestriker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WinterfinShorestriker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25215, 1, "WinterfinShorestriker_OnCombat")
RegisterUnitEvent(25215, 2, "WinterfinShorestriker_OnLeaveCombat")
RegisterUnitEvent(25215, 3, "WinterfinShorestriker_OnKilledTarget")
RegisterUnitEvent(25215, 4, "WinterfinShorestriker_OnDied")