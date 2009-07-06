--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TwilightGeolord_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightGeolord_Boulder", 6000, 0)
Unit:RegisterEvent("TwilightGeolord_EarthShock", 8000, 0)
end

function TwilightGeolord_Boulder(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9483, pUnit:GetMainTank()) 
end

function TwilightGeolord_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13728, pUnit:GetMainTank()) 
end

function TwilightGeolord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightGeolord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightGeolord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11881, 1, "TwilightGeolord_OnCombat")
RegisterUnitEvent(11881, 2, "TwilightGeolord_OnLeaveCombat")
RegisterUnitEvent(11881, 3, "TwilightGeolord_OnKilledTarget")
RegisterUnitEvent(11881, 4, "TwilightGeolord_OnDied")