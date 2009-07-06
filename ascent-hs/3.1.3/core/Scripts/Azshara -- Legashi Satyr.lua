--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LegashiSatyr_OnCombat(Unit, Event)
Unit:RegisterEvent("LegashiSatyr_ManaBurn", 8000, 0)
end

function LegashiSatyr_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11981, pUnit:GetRandomPlayer(4)) 
end

function LegashiSatyr_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegashiSatyr_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegashiSatyr_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6200, 1, "LegashiSatyr_OnCombat")
RegisterUnitEvent(6200, 2, "LegashiSatyr_OnLeaveCombat")
RegisterUnitEvent(6200, 3, "LegashiSatyr_OnKilledTarget")
RegisterUnitEvent(6200, 4, "LegashiSatyr_OnDied")