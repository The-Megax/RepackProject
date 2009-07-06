--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function OasisSnapjaw_OnCombat(Unit, Event)
Unit:RegisterEvent("OasisSnapjaw_SlingDirt", 12000, 0)
end

function OasisSnapjaw_SlingDirt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6530, pUnit:GetMainTank()) 
end

function OasisSnapjaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OasisSnapjaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OasisSnapjaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3461, 1, "OasisSnapjaw_OnCombat")
RegisterUnitEvent(3461, 2, "OasisSnapjaw_OnLeaveCombat")
RegisterUnitEvent(3461, 3, "OasisSnapjaw_OnKilledTarget")
RegisterUnitEvent(3461, 4, "OasisSnapjaw_OnDied")