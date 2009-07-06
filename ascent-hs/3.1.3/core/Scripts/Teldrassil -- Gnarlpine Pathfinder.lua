--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GnarlpinePathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpinePathfinder_GnarlpineVengeance", 10000, 0)
Unit:RegisterEvent("GnarlpinePathfinder_Wrath", 6000, 0)
end

function GnarlpinePathfinder_GnarlpineVengeance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpinePathfinder_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function GnarlpinePathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpinePathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpinePathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2012, 1, "GnarlpinePathfinder_OnCombat")
RegisterUnitEvent(2012, 2, "GnarlpinePathfinder_OnLeaveCombat")
RegisterUnitEvent(2012, 3, "GnarlpinePathfinder_OnKilledTarget")
RegisterUnitEvent(2012, 4, "GnarlpinePathfinder_OnDied")