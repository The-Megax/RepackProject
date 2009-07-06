--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Lord_OnCombat(Unit, Event)
Unit:RegisterEvent("Lord_Cleave", 6000, 0)
end

function Lord_Cleave(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15496, pUnit:GetMainTank()) 
end

function Lord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Lord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Lord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20929, 1, "Lord_OnCombat")
RegisterUnitEvent(20929, 2, "Lord_OnLeaveCombat")
RegisterUnitEvent(20929, 3, "Lord_OnKilledTarget")
RegisterUnitEvent(20929, 4, "Lord_OnDied")