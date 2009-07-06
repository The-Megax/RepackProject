--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ShadowmoonSlayer_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(3019,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("ShadowmoonSlayer_DebilitatingStrike", 20000, 0)
end

function ShadowmoonSlayer_DebilitatingStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37577,pUnit:GetClosestPlayer())
end

function ShadowmoonSlayer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ShadowmoonSlayer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22082, 1, "ShadowmoonSlayer_OnEnterCombat")
RegisterUnitEvent(22082, 2, "ShadowmoonSlayer_OnLeaveCombat")
RegisterUnitEvent(22082, 4, "ShadowmoonSlayer_OnDied")