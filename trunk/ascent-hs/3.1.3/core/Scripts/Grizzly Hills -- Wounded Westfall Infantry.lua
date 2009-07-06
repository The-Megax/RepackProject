--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WoundedWestfallInfantry_OnCombat(Unit, Event)
Unit:RegisterEvent("WoundedWestfallInfantry_HolyShock", 6000, 0)
Unit:RegisterEvent("WoundedWestfallInfantry_SealofCommand", 4000, 1)
end

function WoundedWestfallInfantry_HolyShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32771, pUnit:GetMainTank()) 
end

function WoundedWestfallInfantry_SealofCommand(pUnit, Event) 
pUnit:CastSpell(29385) 
end

function WoundedWestfallInfantry_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoundedWestfallInfantry_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoundedWestfallInfantry_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27482, 1, "WoundedWestfallInfantry_OnCombat")
RegisterUnitEvent(27482, 2, "WoundedWestfallInfantry_OnLeaveCombat")
RegisterUnitEvent(27482, 3, "WoundedWestfallInfantry_OnKilledTarget")
RegisterUnitEvent(27482, 4, "WoundedWestfallInfantry_OnDied")