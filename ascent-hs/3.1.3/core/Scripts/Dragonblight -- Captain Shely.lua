--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CaptainShely_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainShely_RunThrough", 5000, 1)
end

function CaptainShely_RunThrough(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50853, pUnit:GetMainTank()) 
end

function CaptainShely_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainShely_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainShely_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27232, 1, "CaptainShely_OnCombat")
RegisterUnitEvent(27232, 2, "CaptainShely_OnLeaveCombat")
RegisterUnitEvent(27232, 3, "CaptainShely_OnKilledTarget")
RegisterUnitEvent(27232, 4, "CaptainShely_OnDied")