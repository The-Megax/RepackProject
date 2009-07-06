--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ValzareqTheConqueror_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Uylaru_Shoot", 2000, 3)
end

function ValzareqTheConqueror_Shoot(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38094,pUnit:GetClosestPlayer())
end

function ValzareqTheConqueror_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ValzareqTheConqueror_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21979, 1, "ValzareqTheConqueror_OnEnterCombat")
RegisterUnitEvent(21979, 2, "ValzareqTheConqueror_OnLeaveCombat")
RegisterUnitEvent(21979, 4, "ValzareqTheConqueror_OnDied")