--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TorturedSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("TorturedSentinel_SummonHiveAshiDrones", 2000, 1)
end

function TorturedSentinel_SummonHiveAshiDrones(pUnit, Event) 
pUnit:CastSpell(21327) 
end

function TorturedSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TorturedSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TorturedSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12179, 1, "TorturedSentinel_OnCombat")
RegisterUnitEvent(12179, 2, "TorturedSentinel_OnLeaveCombat")
RegisterUnitEvent(12179, 3, "TorturedSentinel_OnKilledTarget")
RegisterUnitEvent(12179, 4, "TorturedSentinel_OnDied")