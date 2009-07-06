--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function IShocktrooper_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(22120,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("IShocktrooper_Cleave", 31000, 0)
end

function IShocktrooper_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function IShocktrooper_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IShocktrooper_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19802, 1, "IShocktrooper_OnEnterCombat")
RegisterUnitEvent(19802, 2, "IShocktrooper_OnLeaveCombat")
RegisterUnitEvent(19802, 4, "IShocktrooper_OnDied")