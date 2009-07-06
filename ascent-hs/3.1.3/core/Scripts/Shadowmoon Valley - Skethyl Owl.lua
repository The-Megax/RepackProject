--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SkethylOwl_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38254,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("SkethylOwl_TerrifyingScreech", 14000, 0)
end

function SkethylOwl_TerrifyingScreech(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38021,pUnit:GetClosestPlayer())
end

function SkethylOwl_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SkethylOwl_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21450, 1, "SkethylOwl_OnEnterCombat")
RegisterUnitEvent(21450, 2, "SkethylOwl_OnLeaveCombat")
RegisterUnitEvent(21450, 4, "SkethylOwl_OnDied")