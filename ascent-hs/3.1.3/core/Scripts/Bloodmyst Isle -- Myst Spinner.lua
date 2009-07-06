--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MystSpinner_OnCombat(Unit, Event)
Unit:RegisterEvent("MystSpinner_Web", 10000, 0)
end

function MystSpinner_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetMainTank()) 
end

function MystSpinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MystSpinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MystSpinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17522, 1, "MystSpinner_OnCombat")
RegisterUnitEvent(17522, 2, "MystSpinner_OnLeaveCombat")
RegisterUnitEvent(17522, 3, "MystSpinner_OnKilledTarget")
RegisterUnitEvent(17522, 4, "MystSpinner_OnDied")