--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TempusWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("TempusWyrm_TimeShock", 5000, 0)
end

function TempusWyrm_TimeShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(60076, pUnit:GetMainTank()) 
end

function TempusWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TempusWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TempusWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32180, 1, "TempusWyrm_OnCombat")
RegisterUnitEvent(32180, 2, "TempusWyrm_OnLeaveCombat")
RegisterUnitEvent(32180, 3, "TempusWyrm_OnKilledTarget")
RegisterUnitEvent(32180, 4, "TempusWyrm_OnDied")