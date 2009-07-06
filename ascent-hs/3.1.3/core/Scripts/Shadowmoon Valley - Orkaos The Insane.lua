--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function OrkaosTheInsane_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("OrkaosTheInsane_Cleave", 14000, 0)
	pUnit:RegisterEvent("OrkaosTheInsane_MortalStrike", 16000, 0)
	pUnit:RegisterEvent("OrkaosTheInsane_Uppercut", 8000, 0)
end

function OrkaosTheInsane_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function OrkaosTheInsane_MortalStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(17547,pUnit:GetClosestPlayer())
end

function OrkaosTheInsane_Uppercut(pUnit,Event)
	pUnit:FullCastSpellOnTarget(10966,pUnit:GetClosestPlayer())
end

function OrkaosTheInsane_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function OrkaosTheInsane_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23168, 1, "OrkaosTheInsane_OnEnterCombat")
RegisterUnitEvent(23168, 2, "OrkaosTheInsane_OnLeaveCombsat")
RegisterUnitEvent(23168, 4, "OrkaosTheInsane_OnDied")