--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HiveRegalHiveLord_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveRegalHiveLord_BerserkerCharge", 6000, 0)
end

function HiveRegalHiveLord_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19471, pUnit:GetRandomPlayer(0)) 
end

function HiveRegalHiveLord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveRegalHiveLord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveRegalHiveLord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11734, 1, "HiveRegalHiveLord_OnCombat")
RegisterUnitEvent(11734, 2, "HiveRegalHiveLord_OnLeaveCombat")
RegisterUnitEvent(11734, 3, "HiveRegalHiveLord_OnKilledTarget")
RegisterUnitEvent(11734, 4, "HiveRegalHiveLord_OnDied")