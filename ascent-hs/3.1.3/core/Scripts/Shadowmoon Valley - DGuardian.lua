--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DGuardian_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DGuardian_Strike", 9000, 0)
	pUnit:RegisterEvent("DGuardian_Bash", 20000, 0)
end

function DGuardian_Strike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37998,pUnit:GetClosestPlayer())
end

function DGuardian_Bash(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11972,pUnit:GetClosestPlayer())
end

function DGuardian_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DGuardian_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20878, 1, "DGuardian_OnEnterCombat")
RegisterUnitEvent(20878, 1, "DGuardian_OnDied")
RegisterUnitEvent(20878, 1, "DGuardian_LeaveCombat")