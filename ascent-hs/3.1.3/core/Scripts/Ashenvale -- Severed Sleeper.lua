--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SeveredSleeper_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredSleeper_Sleep", 12000, 1)
end

function SeveredSleeper_Sleep(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8399, pUnit:GetMainTank()) 
end

function SeveredSleeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredSleeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredSleeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3801, 1, "SeveredSleeper_OnCombat")
RegisterUnitEvent(3801, 2, "SeveredSleeper_OnLeaveCombat")
RegisterUnitEvent(3801, 3, "SeveredSleeper_OnKilledTarget")
RegisterUnitEvent(3801, 4, "SeveredSleeper_OnDied")