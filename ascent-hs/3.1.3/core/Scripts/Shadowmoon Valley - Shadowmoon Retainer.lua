--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ShadowmoonRetainer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ShadowmoonRetainer_Shoot", 4000, 0)
end

function ShadowmoonRetainer_Shoot(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15547,pUnit:GetRandomPlayer(3))
end

function ShadowmoonRetainer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ShadowmoonRetainer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22102, 1, "ShadowmoonRetainer_OnEnterCombat")
RegisterUnitEvent(22102, 2, "ShadowmoonRetainer_OnLeaveCombat")
RegisterUnitEvent(22102, 4, "ShadowmoonRetainer_OnDied")