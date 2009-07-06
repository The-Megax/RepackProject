--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ShadowhoofSummoner_OnEnterCombat(pUnit,Event)
	pUnit:SetCombatMeleeCapable(1)
	pUnit:registerEvent("ShadowhoofSummoner_CurseOfTongues", 30000, 0)
	pUnit:registerEvent("ShadowhoofSummoner_ShadowBolt", 3000, 0)
end

function ShadowhoofSummoner_CurseOfTongues(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13338,pUnit:GetClosestPlayer())
end

function ShadowhoofSummoner_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
end

function ShadowhoofSummoner_OnLeaveCombat(pUnit,Event)
	pUnit:SetCombatMeleeCapable(0)
	pUnit:RemoveEvents()
end

function ShadowhoofSummoner_OnDied(pUnit,Event)
	pUnit:SetCombatMeleeCapable(0)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22859, 1, "ShadowhoofSummoner_OnEnterCombat")
RegisterUnitEvent(22859, 2, "ShadowhoofSummoner_OnLeaveCombat")
RegisterUnitEvent(22859, 4, "ShadowhoofSummoner_OnDied")