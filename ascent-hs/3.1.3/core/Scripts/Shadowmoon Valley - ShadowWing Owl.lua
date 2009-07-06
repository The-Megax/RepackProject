--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ShadowwingOwl_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ShadowwingOwl_EagleClaw", 30000, 0)
end

function ShadowwingOwl_EagleClaw(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function ShadowwingOwl_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ShadowwingOwl_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22265, 1, "ShadowwingOwl_OnEnterCombat")
RegisterUnitEvent(22265, 2, "ShadowwingOwl_OnLeaveCombat")
RegisterUnitEvent(22265, 4, "ShadowwingOwl_OnDied")