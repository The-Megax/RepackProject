--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HiveRegalAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveRegalAmbusher_Poison", 10000, 0)
end

function HiveRegalAmbusher_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetRandomPlayer(0)) 
end

function HiveRegalAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveRegalAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveRegalAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11730, 1, "HiveRegalAmbusher_OnCombat")
RegisterUnitEvent(11730, 2, "HiveRegalAmbusher_OnLeaveCombat")
RegisterUnitEvent(11730, 3, "HiveRegalAmbusher_OnKilledTarget")
RegisterUnitEvent(11730, 4, "HiveRegalAmbusher_OnDied")