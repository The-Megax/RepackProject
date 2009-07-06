--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ShadowlordDeathwail_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ShadowlordDeathwail_DeathCoil", 18000, 0)
	pUnit:RegisterEvent("ShadowlordDeathwail_Fear", 24000, 0)
	pUnit:RegisterEvent("ShadowlordDeathwail_FelFireball", 11000, 0)
	pUnit:RegisterEvent("ShadowlordDeathwail_ShadowBolt", 5000, 0)
	pUnit:RegisterEvent("ShadowlordDeathwail_ShadowBoltVolley", 7000, 0)
end

function ShadowlordDeathwail_DeathCoil(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32709,pUnit:GetClosestPlayer())
end

function ShadowlordDeathwail_Fear(pUnit,Event)
	pUnit:FullCastSpellOnTarget(27641,pUnit:GetClosestPlayer())
end

function ShadowlordDeathwail_FelFireball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38312,pUnit:GetClosestPlayer())
end

function ShadowlordDeathwail_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12471,pUnit:GetClosestPlayer())
end

function ShadowlordDeathwail_ShadowBoltVolley(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15245,pUnit:GetClosestPlayer())
end

function ShadowlordDeathwail_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ShadowlordDeathwail_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22006, 1, "ShadowlordDeathwail_OnEnterCombat")
RegisterUnitEvent(22006, 2, "ShadowlordDeathwail_OnLeaveCombat")
RegisterUnitEvent(22006, 4, "ShadowlordDeathwail_OnDied")