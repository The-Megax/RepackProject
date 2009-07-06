--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ShadowCouncilWarlock_OnEnterCombat(pUnit,Event)
	pUnit:SetCombatMeleeCapable(1)
	pUnit:registerEvent("ShadowCouncilWarlock_DrainLife", 24000, 0)
	pUnit:registerEvent("ShadowCouncilWarlock_ShadowBolt", 2500, 0)
end

function ShadowCouncilWarlock_DrainLife(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37992,pUnit:GetClosestPlayer())
end

function ShadowCouncilWarlock_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
end

function ShadowCouncilWarlock_OnLeaveCombat(pUnit,Event)
	pUnit:SetCombatMeleeCapable(0)
	pUnit:RemoveEvents()
end

function ShadowCouncilWarlock_OnDied(pUnit,Event)
	pUnit:SetCombatMeleeCapable(0)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21302, 1, "ShadowCouncilWarlock_OnEnterCombat")
RegisterUnitEvent(21302, 2, "ShadowCouncilWarlock_OnLeaveCombat")
RegisterUnitEvent(21302, 4, "ShadowCouncilWarlock_OnDied")