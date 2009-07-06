--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ProphetessCavrylin_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36656,pUnit:GetClosestPlayer())
	pUnit:CastSpell(37997)
	pUnit:RegisterEvent("ProphetessCavrylin_MeltFlesh", 15000, 0)
end

function ProphetessCavrylin_MeltFlesh(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37629,pUnit:GetClosestPlayer())
end

function ProphetessCavrylin_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ProphetessCavrylin_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20683, 1, "ProphetessCavrylin_OnEnterCombat")
RegisterUnitEvent(20683, 2, "ProphetessCavrylin_OnLeaveCombsat")
RegisterUnitEvent(20683, 4, "ProphetessCavrylin_OnDied")