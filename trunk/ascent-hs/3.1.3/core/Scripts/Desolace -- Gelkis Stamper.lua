--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GelkisStamper_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisStamper_Trample", 6000, 0)
end

function GelkisStamper_Trample(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function GelkisStamper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisStamper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisStamper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4648, 1, "GelkisStamper_OnCombat")
RegisterUnitEvent(4648, 2, "GelkisStamper_OnLeaveCombat")
RegisterUnitEvent(4648, 3, "GelkisStamper_OnKilledTarget")
RegisterUnitEvent(4648, 4, "GelkisStamper_OnDied")