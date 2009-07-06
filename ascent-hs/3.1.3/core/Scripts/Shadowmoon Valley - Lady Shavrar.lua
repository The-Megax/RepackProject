--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function LadyShavRar_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("LadyShavRar_ArcaneBolt", 8500, 0)
	pUnit:RegisterEvent("LadyShavRar_Freeze", 43000, 0)
end

function LadyShavRar_ArcaneBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13901,pUnit:GetClosestPlayer())
end

function LadyShavRar_Freeze(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38035,pUnit:GetClosestPlayer())
end

function LadyShavRar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function LadyShavRar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20684, 1, "LadyShavRar_OnEnterCombat")
RegisterUnitEvent(20684, 2, "LadyShavRar_OnLeaveCombat")
RegisterUnitEvent(20684, 4, "LadyShavRar_OnDied")