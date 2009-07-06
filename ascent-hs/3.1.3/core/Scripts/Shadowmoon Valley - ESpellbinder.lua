--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ESpellbinder_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ESpellbinder_SummonArcane", 11000, (1))
	pUnit:RegisterEvent("ESpellbinder_ArcaneMissle", 16000, 0)
end

function ESpellbinder_SummonArcane(pUnit,Event)
	pUnit:CastSpell(38171)
end

function ESpellbinder_ArcaneMissle(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34447,pUnit:GetClosestPlayer())
end

function ESpellbinder_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ESpellbinder_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22017, 1, "ESpellbinder_OnEnterCombat")
RegisterUnitEvent(22017, 2, "ESpellbinder_OnLeaveCombat")
RegisterUnitEvent(22017, 4, "ESpellbinder_OnDeath")