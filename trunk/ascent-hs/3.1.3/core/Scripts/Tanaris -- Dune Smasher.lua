--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DuneSmasher_OnCombat(Unit, Event)
Unit:RegisterEvent("DuneSmasher_HeadCrack", 10000, 0)
end

function DuneSmasher_HeadCrack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9791, pUnit:GetMainTank()) 
end

function DuneSmasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DuneSmasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DuneSmasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5469, 1, "DuneSmasher_OnCombat")
RegisterUnitEvent(5469, 2, "DuneSmasher_OnLeaveCombat")
RegisterUnitEvent(5469, 3, "DuneSmasher_OnKilledTarget")
RegisterUnitEvent(5469, 4, "DuneSmasher_OnDied")