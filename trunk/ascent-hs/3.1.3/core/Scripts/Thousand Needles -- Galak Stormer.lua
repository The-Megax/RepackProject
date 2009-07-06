--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GalakStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakStormer_LightningBolt", 8000, 0)
end

function GalakStormer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function GalakStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4097, 1, "GalakStormer_OnCombat")
RegisterUnitEvent(4097, 2, "GalakStormer_OnLeaveCombat")
RegisterUnitEvent(4097, 3, "GalakStormer_OnKilledTarget")
RegisterUnitEvent(4097, 4, "GalakStormer_OnDied")