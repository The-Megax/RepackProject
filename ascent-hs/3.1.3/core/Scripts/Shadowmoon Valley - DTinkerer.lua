--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DTinkerer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DTinkerer_Spell", 23000, 0)
end

function DTinkerer_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38753,pUnit:GetClosestPlayer())
end

function DTinkerer_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DTinkerer_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(38107)
end

RegisterUnitEvent(19754, 1, "DTinkerer_OnEnterCombat")
RegisterUnitEvent(19754, 2, "DTinkerer_LeaveCombat")
RegisterUnitEvent(19754, 4, "DTinkerer_OnDeath")