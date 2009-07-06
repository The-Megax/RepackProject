--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GelkisMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisMarauder_BerserkerStance", 3000, 1)
Unit:RegisterEvent("GelkisMarauder_Cleave", 8000, 0)
end

function GelkisMarauder_BerserkerStance(pUnit, Event) 
pUnit:CastSpell(7366) 
end

function GelkisMarauder_Cleave(pUnit, Event) 
pUnit:CastSpell(845) 
end

function GelkisMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4653, 1, "GelkisMarauder_OnCombat")
RegisterUnitEvent(4653, 2, "GelkisMarauder_OnLeaveCombat")
RegisterUnitEvent(4653, 3, "GelkisMarauder_OnKilledTarget")
RegisterUnitEvent(4653, 4, "GelkisMarauder_OnDied")