--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WaterSoul_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(35923)
end	

RegisterUnitEvent(21109, 1, "WaterSoul_OnEnterCombat")

function WaterSpirit_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("WaterSpirit_Stormbolt", 12000, 0)
end

function WaterSpirit_Stormbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38032,pUnit:GetClosestPlayer())
end

function WaterSpirit_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function WaterSpirit_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21059, 1, "WaterSpirit_OnEnterCombat")
RegisterUnitEvent(21059, 1, "WaterSpirit_OnLeaveCombat")
RegisterUnitEvent(21059, 1, "WaterSpirit_OnDeath")