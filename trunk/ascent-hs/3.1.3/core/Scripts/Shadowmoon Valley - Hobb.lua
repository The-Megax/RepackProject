--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Hobb_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41440,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Hobb_Spell1", 10000, 0)
	pUnit:RegisterEvent("Hobb_Spell2", 30000, 0)
end

function Hobb_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41448,pUnit:GetClosestPlayer())
end

function Hobb_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38370,pUnit:GetClosestPlayer())
end

function Hobb_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Hobb_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23434, 1, "Hobb_OnEnterCombat")
RegisterUnitEvent(23434, 2, "Hobb_OnLeaveCombat")
RegisterUnitEvent(23434, 4, "Hobb_OnDied")