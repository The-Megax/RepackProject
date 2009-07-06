--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GhostlySage_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostlySage_Moonfire", 6000, 0)
Unit:RegisterEvent("GhostlySage_Wrath", 8000, 0)
end

function GhostlySage_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function GhostlySage_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function GhostlySage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostlySage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostlySage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25351, 1, "GhostlySage_OnCombat")
RegisterUnitEvent(25351, 2, "GhostlySage_OnLeaveCombat")
RegisterUnitEvent(25351, 3, "GhostlySage_OnKilledTarget")
RegisterUnitEvent(25351, 4, "GhostlySage_OnDied")