--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LegashiRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("LegashiRogue_Gouge", 10000, 0)
end

function LegashiRogue_Gouge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12540, pUnit:GetMainTank()) 
end

function LegashiRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegashiRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegashiRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6201, 1, "LegashiRogue_OnCombat")
RegisterUnitEvent(6201, 2, "LegashiRogue_OnLeaveCombat")
RegisterUnitEvent(6201, 3, "LegashiRogue_OnKilledTarget")
RegisterUnitEvent(6201, 4, "LegashiRogue_OnDied")