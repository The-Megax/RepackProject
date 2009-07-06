--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ForsakenSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenSeeker_Heal", 12000, 0)
Unit:RegisterEvent("ForsakenSeeker_HolySmite", 7000, 0)
end

function ForsakenSeeker_Heal(pUnit, Event) 
pUnit:CastSpell(2054) 
end

function ForsakenSeeker_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9734, pUnit:GetMainTank()) 
end

function ForsakenSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3732, 1, "ForsakenSeeker_OnCombat")
RegisterUnitEvent(3732, 2, "ForsakenSeeker_OnLeaveCombat")
RegisterUnitEvent(3732, 3, "ForsakenSeeker_OnKilledTarget")
RegisterUnitEvent(3732, 4, "ForsakenSeeker_OnDied")