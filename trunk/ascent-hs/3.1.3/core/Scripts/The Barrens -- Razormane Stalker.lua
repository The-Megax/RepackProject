--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormaneStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneStalker_SinesterStrike", 3000, 0)
end

function RazormaneStalker_SinesterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1758, pUnit:GetMainTank()) 
end

function RazormaneStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3457, 1, "RazormaneStalker_OnCombat")
RegisterUnitEvent(3457, 2, "RazormaneStalker_OnLeaveCombat")
RegisterUnitEvent(3457, 3, "RazormaneStalker_OnKilledTarget")
RegisterUnitEvent(3457, 4, "RazormaneStalker_OnDied")