--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Shocktrooper_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Shocktrooper_Glaive",1000,0)
    pUnit:RegisterEvent("Shocktrooper_Hamstring",1000,0)
end

function Shocktrooper_Glaive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36500,pUnit:GetClosestPlayer())
end

function Shocktrooper_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31553,pUnit:GetClosestPlayer())
end

function Shocktrooper_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Shocktrooper_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20453, 1, "Shocktrooper_OnEnterCombat")
RegisterUnitEvent (20453, 2, "Shocktrooper_OnLeaveCombat")
RegisterUnitEvent (20453, 4, "Shocktrooper_OnDied")
