--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Barash_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Barash_RockShell", 11000, 0)
	pUnit:RegisterEvent("Barash_BellowingRoar", 40000, 0)
	pUnit:RegisterEvent("Barash_Rend", 5000, 0)
end

function Barash_RockShell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33810,pUnit:GetClosestPlayer())
end

function Barash_BellowingRoar(pUnit,Event)
	pUnit:FullCastSpellOnTarget(40636,pUnit:GetClosestPlayer())
end

function Barash_Rend(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13443,pUnit:GetClosestPlayer())
end

function Barash_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Barash_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23269, 1, "Barash_OnEnterCombat")
RegisterUnitEvent(23269, 2, "Barash_OnLeaveCombat")
RegisterUnitEvent(23269, 4, "Barash_OnDied")