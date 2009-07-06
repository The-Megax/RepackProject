--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Doe_OnCombat(Unit, Event)
Unit:RegisterEvent("Doe_Gore", 5000, 0)
end

function Doe_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function Doe_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Doe_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Doe_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20610, 1, "Doe_OnCombat")
RegisterUnitEvent(20610, 2, "Doe_OnLeaveCombat")
RegisterUnitEvent(20610, 3, "Doe_OnKilledTarget")
RegisterUnitEvent(20610, 4, "Doe_OnDied")