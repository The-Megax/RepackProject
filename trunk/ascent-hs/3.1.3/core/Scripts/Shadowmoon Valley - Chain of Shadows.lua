--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ChainOfShadows_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ChainOfShadows_Spell", 5500, 0)
end

function ChainOfShadows_Spell(pUnit,Event)
	pUnit:FullCastSPellOnTarget(37784,pUnit:GetClosestPlayer())
end

function ChainOfShadows_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ChainOfShadows_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21876, 1, "ChainOfShadows_OnEnterCombat")
RegisterUnitEvent(21876, 2, "ChainOfShadows_OnLeaveCombat")
RegisterUnitEvent(21876, 4, "ChainOfShadows_OnDied")