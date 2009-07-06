--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WebwoodSilkspinner_OnCombat(Unit, Event)
Unit:RegisterEvent("WebwoodSilkspinner_Web", 8000, 0)
end

function WebwoodSilkspinner_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12023, pUnit:GetMainTank()) 
end

function WebwoodSilkspinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WebwoodSilkspinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WebwoodSilkspinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2000, 1, "WebwoodSilkspinner_OnCombat")
RegisterUnitEvent(2000, 2, "WebwoodSilkspinner_OnLeaveCombat")
RegisterUnitEvent(2000, 3, "WebwoodSilkspinner_OnKilledTarget")
RegisterUnitEvent(2000, 4, "WebwoodSilkspinner_OnDied")