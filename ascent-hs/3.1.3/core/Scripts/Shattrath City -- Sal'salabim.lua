--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Salsalabim_OnCombat(Unit, Event)
Unit:RegisterEvent("Salsalabim_Pull", 6000, 0)
end

function Salsalabim_Pull(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31705, pUnit:GetMainTank()) 
end

function Salsalabim_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Salsalabim_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Salsalabim_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18584, 1, "Salsalabim_OnCombat")
RegisterUnitEvent(18584, 2, "Salsalabim_OnLeaveCombat")
RegisterUnitEvent(18584, 3, "Salsalabim_OnKilledTarget")
RegisterUnitEvent(18584, 4, "Salsalabim_OnDied")