--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ViciousGrell_OnCombat(Unit, Event)
Unit:RegisterEvent("ViciousGrell_Savagery", 8000, 0)
end

function ViciousGrell_Savagery(pUnit, Event) 
pUnit:CastSpell(5515) 
end

function ViciousGrell_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ViciousGrell_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ViciousGrell_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2005, 1, "ViciousGrell_OnCombat")
RegisterUnitEvent(2005, 2, "ViciousGrell_OnLeaveCombat")
RegisterUnitEvent(2005, 3, "ViciousGrell_OnKilledTarget")
RegisterUnitEvent(2005, 4, "ViciousGrell_OnDied")