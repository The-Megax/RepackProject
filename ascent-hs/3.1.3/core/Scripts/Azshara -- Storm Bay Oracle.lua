--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function StormBayOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("StormBayOracle_LightningBolt", 8000, 0)
end

function StormBayOracle_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function StormBayOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormBayOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormBayOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6351, 1, "StormBayOracle_OnCombat")
RegisterUnitEvent(6351, 2, "StormBayOracle_OnLeaveCombat")
RegisterUnitEvent(6351, 3, "StormBayOracle_OnKilledTarget")
RegisterUnitEvent(6351, 4, "StormBayOracle_OnDied")