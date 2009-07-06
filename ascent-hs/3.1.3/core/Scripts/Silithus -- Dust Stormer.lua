--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DustStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("DustStormer_LightningShield", 6000, 0)
Unit:RegisterEvent("DustStormer_LightningCloud", 10000, 0)
end

function DustStormer_LightningShield(pUnit, Event) 
pUnit:CastSpell(19514) 
end

function DustStormer_LightningCloud(pUnit, Event) 
pUnit:CastSpell(19513) 
end

function DustStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DustStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DustStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11744, 1, "DustStormer_OnCombat")
RegisterUnitEvent(11744, 2, "DustStormer_OnLeaveCombat")
RegisterUnitEvent(11744, 3, "DustStormer_OnKilledTarget")
RegisterUnitEvent(11744, 4, "DustStormer_OnDied")