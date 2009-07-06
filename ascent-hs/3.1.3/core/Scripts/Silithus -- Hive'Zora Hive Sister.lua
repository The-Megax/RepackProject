--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HiveZoraHiveSister_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveZoraHiveSister_ToxicSpit", 5000, 0)
end

function HiveZoraHiveSister_ToxicSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7951, pUnit:GetClosestPlayer()) 
end

function HiveZoraHiveSister_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveZoraHiveSister_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveZoraHiveSister_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11729, 1, "HiveZoraHiveSister_OnCombat")
RegisterUnitEvent(11729, 2, "HiveZoraHiveSister_OnLeaveCombat")
RegisterUnitEvent(11729, 3, "HiveZoraHiveSister_OnKilledTarget")
RegisterUnitEvent(11729, 4, "HiveZoraHiveSister_OnDied")