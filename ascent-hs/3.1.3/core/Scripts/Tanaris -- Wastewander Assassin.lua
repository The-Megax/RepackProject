--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WastewanderAssassin_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderAssassin_Execute", 5000, 0)
end

function WastewanderAssassin_Execute(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7160, pUnit:GetMainTank()) 
end

function WastewanderAssassin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderAssassin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderAssassin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5623, 1, "WastewanderAssassin_OnCombat")
RegisterUnitEvent(5623, 2, "WastewanderAssassin_OnLeaveCombat")
RegisterUnitEvent(5623, 3, "WastewanderAssassin_OnKilledTarget")
RegisterUnitEvent(5623, 4, "WastewanderAssassin_OnDied")