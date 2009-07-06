--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ShadeofArugal_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadeofArugal_PhaseOut", 45000, 0)
Unit:RegisterEvent("ShadeofArugal_ShadowBolt", 8000, 0)
Unit:RegisterEvent("ShadeofArugal_WorgensCommand", 15000, 1)
end

function ShadeofArugal_PhaseOut(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53052, pUnit:GetMainTank()) 
end

function ShadeofArugal_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53086, pUnit:GetMainTank()) 
end

function ShadeofArugal_WorgensCommand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53070, pUnit:GetMainTank()) 
end

function ShadeofArugal_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadeofArugal_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadeofArugal_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27018, 1, "ShadeofArugal_OnCombat")
RegisterUnitEvent(27018, 2, "ShadeofArugal_OnLeaveCombat")
RegisterUnitEvent(27018, 3, "ShadeofArugal_OnKilledTarget")
RegisterUnitEvent(27018, 4, "ShadeofArugal_OnDied")