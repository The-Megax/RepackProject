--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function IShadowstalker_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(7159,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("IShadowstalker_Backstab", 8000, 0)
end

function IShadowstalker_Backstab(pUnit,Event)
	pUnit:FullCastSpellOnTarget(7159,pUnit:GetClosestPlayer())
end

function IShadowstalker_Stealth(pUnit,Event)
	pUnit:CastSpell(5916)
end

function IShadowstalker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IShadowstalker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21337, 1, "IShadowstalker_OnEnterCombat")
RegisterUnitEvent(21337, 6, "IShadowstalker_Stealth")
RegisterUnitEvent(21337, 2, "IShadowstalker_OnLeaveCombat")
RegisterUnitEvent(21337, 4, "IShadowstalker_OnDied")