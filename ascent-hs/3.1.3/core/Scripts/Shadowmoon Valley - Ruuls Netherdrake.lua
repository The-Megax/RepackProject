--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RuulsNetherdrake_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38344,pUnit:GetClosestPlayer())
	pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("RuulsNetherdrake_ArcaneBlast", 000, 0)
end

function RuulsNetherdrake_ArcaneBlast(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38344,pUnit:GetClosestPlayer())
end

function RuulsNetherdrake_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function RuulsNetherdrake_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22106, 1, "RuulsNetherdrake_OnEnterCombat")
RegisterUnitEvent(22106, 2, "RuulsNetherdrake_OnLeaveCombat")
RegisterUnitEvent(22106, 4, "RuulsNetherdrake_OnDied")