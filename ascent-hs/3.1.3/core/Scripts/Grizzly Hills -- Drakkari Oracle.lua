--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DrakkariOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariOracle_LightningBolt", 7000, 0)
Unit:RegisterEvent("DrakkariOracle_WarpedBody", 8000, 0)
Unit:RegisterEvent("DrakkariOracle_WarpedMind", 6000, 0)
end

function DrakkariOracle_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function DrakkariOracle_WarpedBody(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52431, pUnit:GetMainTank()) 
end

function DrakkariOracle_WarpedMind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52430, pUnit:GetMainTank()) 
end

function DrakkariOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26795, 1, "DrakkariOracle_OnCombat")
RegisterUnitEvent(26795, 2, "DrakkariOracle_OnLeaveCombat")
RegisterUnitEvent(26795, 3, "DrakkariOracle_OnKilledTarget")
RegisterUnitEvent(26795, 4, "DrakkariOracle_OnDied")