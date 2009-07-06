--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GalakMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakMarauder_RushingCharge", 7000, 0)
end

function GalakMarauder_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GalakMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4099, 1, "GalakMarauder_OnCombat")
RegisterUnitEvent(4099, 2, "GalakMarauder_OnLeaveCombat")
RegisterUnitEvent(4099, 3, "GalakMarauder_OnKilledTarget")
RegisterUnitEvent(4099, 4, "GalakMarauder_OnDied")