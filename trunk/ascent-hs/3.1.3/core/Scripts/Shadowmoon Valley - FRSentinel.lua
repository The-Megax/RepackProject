--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function FRSentinel_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38022)
	pUnit:RegisterEvent("FRSentinel_Boom", 000, 0)
	pUnit:RegisterEvent("FRSentinel_WorldBreaker", 16000, 0)
end

function FRSentinel_Boom(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38052,pUnit:GetClosestPlayer())
end

function FRSentinel_WorldBreaker(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38052,pUnit:GetClosestPlayer())
end

function FRSentinel_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function FRSentinel_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21949, 1, "FRSentinel_OnEnterCombat")
RegisterUnitEvent(21949, 1, "FRSentinel_OnLeaveCombat")
RegisterUnitEvent(21949, 1, "FRSentinel_OnDeath")