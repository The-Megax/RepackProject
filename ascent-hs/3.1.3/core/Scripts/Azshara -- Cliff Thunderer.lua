--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CliffThunderer_OnCombat(Unit, Event)
Unit:RegisterEvent("CliffThunderer_Thunderclap", 8000, 0)
end

function CliffThunderer_Thunderclap(pUnit, Event) 
pUnit:CastSpell(8147) 
end

function CliffThunderer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CliffThunderer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CliffThunderer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6147, 1, "CliffThunderer_OnCombat")
RegisterUnitEvent(6147, 2, "CliffThunderer_OnLeaveCombat")
RegisterUnitEvent(6147, 3, "CliffThunderer_OnKilledTarget")
RegisterUnitEvent(6147, 4, "CliffThunderer_OnDied")