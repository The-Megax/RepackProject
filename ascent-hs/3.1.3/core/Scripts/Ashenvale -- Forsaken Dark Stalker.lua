--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ForsakenDarkStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenDarkStalker_Throw", 6000, 0)
end

function ForsakenDarkStalker_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function ForsakenDarkStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenDarkStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenDarkStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3808, 1, "ForsakenDarkStalker_OnCombat")
RegisterUnitEvent(3808, 2, "ForsakenDarkStalker_OnLeaveCombat")
RegisterUnitEvent(3808, 3, "ForsakenDarkStalker_OnKilledTarget")
RegisterUnitEvent(3808, 4, "ForsakenDarkStalker_OnDied")