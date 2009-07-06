--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Dimp_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Dimp_Firebolt", 6000, 0)
end

function Dimp_Firebolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36227,pUnit:GetClosestPlayer())
end

function Dimp_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dimp_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20887, 1, "Dimp_OnEnterCombat")
RegisterUnitEvent(20887, 2, "Dimp_LeaveCombat")
RegisterUnitEvent(20887, 4, "Dimp_OnDied")