--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CFE_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(35194)
	pUnit:RegisterEvent("CFE_Fball", 5000, 0)
end

function CFE_Fball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9053,pUnit:GetClosestPlayer())
end

function CFE_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CFE_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21706, 1, "CFE_OnEnterCombat")
RegisterUnitEvent(21706, 2, "CFE_OnLeaveCombat")
RegisterUnitEvent(21706, 4, "CFE_OnDied")