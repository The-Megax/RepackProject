--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Icestorm_OnCombat(Unit, Event)
Unit:RegisterEvent("Icestorm_FrostBreath", 7000, 0)
end

function Icestorm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47428, pUnit:GetMainTank()) 
end

function Icestorm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icestorm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icestorm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26287, 1, "Icestorm_OnCombat")
RegisterUnitEvent(26287, 2, "Icestorm_OnLeaveCombat")
RegisterUnitEvent(26287, 3, "Icestorm_OnKilledTarget")
RegisterUnitEvent(26287, 4, "Icestorm_OnDied")