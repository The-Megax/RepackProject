--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MoonrestStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("MoonrestStalker_ManaBurn", 4000, 0)
end

function MoonrestStalker_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function MoonrestStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoonrestStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoonrestStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26281, 1, "MoonrestStalker_OnCombat")
RegisterUnitEvent(26281, 2, "MoonrestStalker_OnLeaveCombat")
RegisterUnitEvent(26281, 3, "MoonrestStalker_OnKilledTarget")
RegisterUnitEvent(26281, 4, "MoonrestStalker_OnDied")