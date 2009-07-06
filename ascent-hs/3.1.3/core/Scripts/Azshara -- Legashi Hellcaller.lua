--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LegashiHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("LegashiHellcaller_Fireball", 8000, 0)
end

function LegashiHellcaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20823, pUnit:GetMainTank()) 
end

function LegashiHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegashiHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegashiHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6202, 1, "LegashiHellcaller_OnCombat")
RegisterUnitEvent(6202, 2, "LegashiHellcaller_OnLeaveCombat")
RegisterUnitEvent(6202, 3, "LegashiHellcaller_OnKilledTarget")
RegisterUnitEvent(6202, 4, "LegashiHellcaller_OnDied")