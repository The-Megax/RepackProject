--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SilithidHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidHarvester_HarvestSwarm", 6000, 0)
Unit:RegisterEvent("SilithidHarvester_SummonHarvesterSwarm", 3000, 1)
end

function SilithidHarvester_HarvestSwarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7277, pUnit:GetMainTank()) 
end

function SilithidHarvester_SummonHarvesterSwarm(pUnit, Event) 
pUnit:CastSpell(7278) 
end

function SilithidHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3253, 1, "SilithidHarvester_OnCombat")
RegisterUnitEvent(3253, 2, "SilithidHarvester_OnLeaveCombat")
RegisterUnitEvent(3253, 3, "SilithidHarvester_OnKilledTarget")
RegisterUnitEvent(3253, 4, "SilithidHarvester_OnDied")