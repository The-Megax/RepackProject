--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GalakScout_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakScout_Shot", 6000, 0)
end

function GalakScout_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GalakScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4094, 1, "GalakScout_OnCombat")
RegisterUnitEvent(4094, 2, "GalakScout_OnLeaveCombat")
RegisterUnitEvent(4094, 3, "GalakScout_OnKilledTarget")
RegisterUnitEvent(4094, 4, "GalakScout_OnDied")