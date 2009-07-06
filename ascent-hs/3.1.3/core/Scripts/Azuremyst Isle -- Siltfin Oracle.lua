--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SiltfinOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("SiltfinOracle_LightningShield", 5000, 0)
Unit:RegisterEvent("SiltfinOracle_Wrath", 8000, 0)
end

function SiltfinOracle_LightningShield(pUnit, Event) 
pUnit:CastSpell(12550) 
end

function SiltfinOracle_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function SiltfinOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SiltfinOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SiltfinOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17191, 1, "SiltfinOracle_OnCombat")
RegisterUnitEvent(17191, 2, "SiltfinOracle_OnLeaveCombat")
RegisterUnitEvent(17191, 3, "SiltfinOracle_OnKilledTarget")
RegisterUnitEvent(17191, 4, "SiltfinOracle_OnDied")