--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SpellboundTerrorguard_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("SpellboundTerrorguard_FelFlames", 8000, 0)
	pUnit:RegisterEvent("SpellboundTerrorguard_Hamstring", 20000, 3)
end

function SpellboundTerrorguard_FelFlames(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37488,pUnit:GetClosestPlayer())
end

function SpellboundTerrorguard_Hamstring(pUnit,Event)
	pUnit:FullCastSpellOnTarget(31553,pUnit:GetClosestPlayer())
end

function SpellboundTerrorguard_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SpellboundTerrorguard_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21908, 1, "SpellboundTerrorguard_OnEnterCombat")
RegisterUnitEvent(21908, 2, "SpellboundTerrorguard_OnLeaveCombat")
RegisterUnitEvent(21908, 4, "SpellboundTerrorguard_OnDied")