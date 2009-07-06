--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Morgroron_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Morgroron_MortalCleave", 12000, 0)
	pUnit:RegisterEvent("Morgroron_RainOfFire", 18000, 0)
	pUnit:RegisterEvent("Morgroron_WarStomp", 7000, 0)
end

function Morgroron_MortalCleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(22859,pUnit:GetClosestPlayer())
end

function Morgroron_RainOfFire(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38741,pUnit:GetClosestPlayer())
end

function Morgroron_WarStomp(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38750,pUnit:GetClosestPlayer())
end

function Morgroron_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Morgroron_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21500, 1, "Morgroron_OnEnterCombat")
RegisterUnitEvent(21500, 2, "Morgroron_OnLeaveCombat")
RegisterUnitEvent(21500, 4, "Morgroron_OnDied")