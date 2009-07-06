--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MavorisCloudsbreak_OnCombat(Unit, Event)
Unit:RegisterEvent("MavorisCloudsbreak_LightningCloud", 10000, 0)
end

function MavorisCloudsbreak_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function MavorisCloudsbreak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MavorisCloudsbreak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MavorisCloudsbreak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3942, 1, "MavorisCloudsbreak_OnCombat")
RegisterUnitEvent(3942, 2, "MavorisCloudsbreak_OnLeaveCombat")
RegisterUnitEvent(3942, 3, "MavorisCloudsbreak_OnKilledTarget")
RegisterUnitEvent(3942, 4, "MavorisCloudsbreak_OnDied")