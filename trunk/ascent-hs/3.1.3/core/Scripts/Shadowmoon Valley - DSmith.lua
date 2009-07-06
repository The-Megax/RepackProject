--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DSmith_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DSmith_ChaosNova", 6000, 0)
	pUnit:RegisterEvent("DSmith_DrillArmor", 6000, 0)
end

function DSmith_ChaosNova(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36225,pUnit:GetClosestPlayer())
end

function DSmith_DrillArmor(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37580,pUnit:GetClosestPlayer())
end

function DSmith_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DSmith_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19756, 1, "DSmith_OnEnterCombat")
RegisterUnitEvent(19756, 2, "DSmith_LeaveCombat")
RegisterUnitEvent(19756, 4, "DSmith_OnDied")