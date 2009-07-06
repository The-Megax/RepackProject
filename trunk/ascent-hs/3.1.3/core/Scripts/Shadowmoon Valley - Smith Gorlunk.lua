--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SmithGorlunk_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("SmithGorlunk_Rend", 15000, 0)
	pUnit:RegisterEvent("SmithGorlunk_SunderArmor", 12000, 0)
end

function SmithGorlunk_Rend(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13445,pUnit:GetClosestPlayer())
end

function SmithGorlunk_SunderArmor(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13444,pUnit:GetClosestPlayer())
end

function SmithGorlunk_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SmithGorlunk_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22037, 1, "SmithGorlunk_OnEnterCombat")
RegisterUnitEvent(22037, 2, "SmithGorlunk_OnLeaveCombat")
RegisterUnitEvent(22037, 4, "SmithGorlunk_OnDied")