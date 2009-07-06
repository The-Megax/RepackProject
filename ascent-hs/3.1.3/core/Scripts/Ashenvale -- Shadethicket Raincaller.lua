--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ShadethicketRaincaller_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketRaincaller_LightningBolt", 8000, 0)
Unit:RegisterEvent("ShadethicketRaincaller_LightningCloud", 10000, 0)
end

function ShadethicketRaincaller_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function ShadethicketRaincaller_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function ShadethicketRaincaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketRaincaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketRaincaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3783, 1, "ShadethicketRaincaller_OnCombat")
RegisterUnitEvent(3783, 2, "ShadethicketRaincaller_OnLeaveCombat")
RegisterUnitEvent(3783, 3, "ShadethicketRaincaller_OnKilledTarget")
RegisterUnitEvent(3783, 4, "ShadethicketRaincaller_OnDied")