--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BlisteringSteamrager_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("BlisteringSteamrager_SteamBlast", 24000, 0)
end

function BlisteringSteamrager_SteamBlast(pUnit,Event)
	pUnit:FullCastSpellOnTarget(52531,pUnit:GetClosestPlayer())
end

function BlisteringSteamrager_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BlisteringSteamrager_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(28583, 1, "BlisteringSteamrager_OnEnterCombat")
RegisterUnitEvent(28583, 2, "BlisteringSteamrager_OnLeaveCombat")
RegisterUnitEvent(28583, 3, "BlisteringSteamrager_OnDied")

function HardenedSteelBerserker_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("HardenedSteelBerserker_Enrage", 60000, 1)
	pUnit:RegisterEvent("HardenedSteelBerserker_HurlWeapon", 42000, 0)
end

function HardenedSteelBerserker_Enrage(pUnit,Event)
	pUnit:FullCastSpellOnTarget(50420,pUnit:GetClosestPlayer())
end

function HardenedSteelBerserker_HurlWeapon(pUnit,Event)
	pUnit:FullCastSpellOnTarget(52740,pUnit:GetClosestPlayer())
end

function HardenedSteelBerserker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function HardenedSteelBerserker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(28579, 1, "HardenedSteelBerserker_OnEnterCombat")
RegisterUnitEvent(28579, 2, "HardenedSteelBerserker_OnLeaveCombat")
RegisterUnitEvent(28579, 3, "HardenedSteelBerserker_OnDied")