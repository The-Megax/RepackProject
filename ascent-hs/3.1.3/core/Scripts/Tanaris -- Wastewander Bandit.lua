--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WastewanderBandit_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderBandit_Backstab", 5000, 0)
Unit:RegisterEvent("WastewanderBandit_Gouge", 6000, 0)
end

function WastewanderBandit_Backstab(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8721, pUnit:GetMainTank()) 
end

function WastewanderBandit_Gouge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8629, pUnit:GetMainTank()) 
end

function WastewanderBandit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderBandit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderBandit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5618, 1, "WastewanderBandit_OnCombat")
RegisterUnitEvent(5618, 2, "WastewanderBandit_OnLeaveCombat")
RegisterUnitEvent(5618, 3, "WastewanderBandit_OnKilledTarget")
RegisterUnitEvent(5618, 4, "WastewanderBandit_OnDied")