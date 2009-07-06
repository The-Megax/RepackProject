--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WastewanderThief_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderThief_Disarm", 10000, 0)
end

function WastewanderThief_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function WastewanderThief_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderThief_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderThief_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5616, 1, "WastewanderThief_OnCombat")
RegisterUnitEvent(5616, 2, "WastewanderThief_OnLeaveCombat")
RegisterUnitEvent(5616, 3, "WastewanderThief_OnKilledTarget")
RegisterUnitEvent(5616, 4, "WastewanderThief_OnDied")