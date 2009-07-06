--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WastesDigger_OnCombat(Unit, Event)
Unit:RegisterEvent("WastesDigger_CarnivorousBite", 4000, 0)
end

function WastesDigger_CarnivorousBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30639, pUnit:GetMainTank()) 
end

function WastesDigger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastesDigger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastesDigger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26492, 1, "WastesDigger_OnCombat")
RegisterUnitEvent(26492, 2, "WastesDigger_OnLeaveCombat")
RegisterUnitEvent(26492, 3, "WastesDigger_OnKilledTarget")
RegisterUnitEvent(26492, 4, "WastesDigger_OnDied")