--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GalakWindchaser_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakWindchaser_EnvelopingWinds", 13000, 0)
Unit:RegisterEvent("GalakWindchaser_HealingWave", 8000, 0)
end

function GalakWindchaser_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6728, pUnit:GetMainTank()) 
end

function GalakWindchaser_HealingWave(pUnit, Event) 
pUnit:CastSpell(939) 
end

function GalakWindchaser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakWindchaser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakWindchaser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4096, 1, "GalakWindchaser_OnCombat")
RegisterUnitEvent(4096, 2, "GalakWindchaser_OnLeaveCombat")
RegisterUnitEvent(4096, 3, "GalakWindchaser_OnKilledTarget")
RegisterUnitEvent(4096, 4, "GalakWindchaser_OnDied")