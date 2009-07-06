--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CWE_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(35194)
	pUnit:RegisterEvent("CWE_FBolt", 5000, 0)
end

function CWE_Fbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9672,pUnit:GetClosestPlayer())
end

function CWE_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CWE_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21428, 1, "CWE_OnEnterCombat")
RegisterUnitEvent(21428, 2, "CWE_OnLeaveCombat")
RegisterUnitEvent(21428, 4, "CWE_OnDied")