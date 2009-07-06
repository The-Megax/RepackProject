--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DesertRumbler_OnCombat(Unit, Event)
Unit:RegisterEvent("DesertRumbler_Trample", 6000, 0)
end

function DesertRumbler_Trample(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function DesertRumbler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DesertRumbler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DesertRumbler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11746, 1, "DesertRumbler_OnCombat")
RegisterUnitEvent(11746, 2, "DesertRumbler_OnLeaveCombat")
RegisterUnitEvent(11746, 3, "DesertRumbler_OnKilledTarget")
RegisterUnitEvent(11746, 4, "DesertRumbler_OnDied")