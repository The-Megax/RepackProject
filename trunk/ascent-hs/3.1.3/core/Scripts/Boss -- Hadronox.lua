--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Hadronox_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Hadronox_WebGrab",15000, 0)
	pUnit:RegisterEvent("Hadronox_PierceArmor",12000, 0)
	pUnit:RegisterEvent("Hadronox_LeechPoison",10000, 0)
	pUnit:RegisterEvent("Hadronox_Acidcloud",20000, 0)	
end

function Hadronox_WebGrab(pUnit,Event)
	pUnit:FullCastSpellOnTarget(53406,pUnit:GetClosestPlayer(0))
end

function Hadronox_PierceArmor(pUnit,Event)
	pUnit:FullCastSpellOnTarget(53418,pUnit:GetClosestPlayer(0))
end

function Hadronox_LeechPoison(pUnit,Event)
	pUnit:FullCastSpell(53030)
end

function Hadronox_Acidcloud(pUnit,Event)
	pUnit:FullCastSpellOnTarget(53400,pUnit:GetClosestPlayer(0))
end

function Hadronox_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function Hadronox_OnDied(pUnit, event, player)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(28921, 1, "Hadronox_OnEnterCombat")
RegisterUnitEvent(28921, 2, "Hadronox_OnLeaveCombat")
RegisterUnitEvent(28921, 4, "Hadronox_OnDied")