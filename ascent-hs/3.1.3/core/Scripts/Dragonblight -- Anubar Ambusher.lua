--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AnubarAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarAmbusher_Rush", 6000, 0)
end

function AnubarAmbusher_Rush(pUnit, Event) 
pUnit:CastSpell(50347) 
end

function AnubarAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26402, 1, "AnubarAmbusher_OnCombat")
RegisterUnitEvent(26402, 2, "AnubarAmbusher_OnLeaveCombat")
RegisterUnitEvent(26402, 3, "AnubarAmbusher_OnKilledTarget")
RegisterUnitEvent(26402, 4, "AnubarAmbusher_OnDied")