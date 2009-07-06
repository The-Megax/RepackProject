--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ShadowswornDrakonid_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ShadowswornDrakonid_Cleave", 11000, 0)
	pUnit:RegisterEvent("ShadowswornDrakonid_MortalStrike", 15000, 0)
	pUnit:RegisterEvent("ShadowswornDrakonid_SunderArmor", 30000, 0)
end

function ShadowswornDrakonid_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function ShadowswornDrakonid_MortalStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(17547,pUnit:GetClosestPlayer())
end

function ShadowswornDrakonid_SunderArmor(pUnit,Event)
	pUnit:FullCastSpellOnTarget(16145,pUnit:GetClosestPlayer())
end

function ShadowswornDrakonid_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ShadowswornDrakonid_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22072, 1, "ShadowswornDrakonid_OnEnterCombat")
RegisterUnitEvent(22072, 2, "ShadowswornDrakonid_OnLeaveCombat")
RegisterUnitEvent(22072, 4, "ShadowswornDrakonid_OnDied")