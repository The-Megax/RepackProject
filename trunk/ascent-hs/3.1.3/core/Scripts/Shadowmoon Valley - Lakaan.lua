--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Lakaan_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Lakaan_WaterBolt", 4000, 0)
end

function Lakaan_WaterBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32011,pUnit:GetClosestPlayer())
end

function Lakaan_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Lakaan_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21416, 1, "Lakaan_OnEnterCombat")
RegisterUnitEvent(21416, 2, "Lakaan_OnLeaveCombat")
RegisterUnitEvent(21416, 4, "Lakaan_OnDied")