--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GnarlpineMystic_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineMystic_Wrath", 6000, 0)
end

function GnarlpineMystic_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function GnarlpineMystic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineMystic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineMystic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7235, 1, "GnarlpineMystic_OnCombat")
RegisterUnitEvent(7235, 2, "GnarlpineMystic_OnLeaveCombat")
RegisterUnitEvent(7235, 3, "GnarlpineMystic_OnKilledTarget")
RegisterUnitEvent(7235, 4, "GnarlpineMystic_OnDied")