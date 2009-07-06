--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Kaan_OnCombat(Unit, Event)
Unit:RegisterEvent("Kaan_Banish", 7000, 0)
end

function Kaan_Banish(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36642, pUnit:GetMainTank()) 
end

function Kaan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Kaan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Kaan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23271, 1, "Kaan_OnCombat")
RegisterUnitEvent(23271, 2, "Kaan_OnLeaveCombat")
RegisterUnitEvent(23271, 3, "Kaan_OnKilledTarget")
RegisterUnitEvent(23271, 4, "Kaan_OnDied")