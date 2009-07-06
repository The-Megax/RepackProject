--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function IOverseer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IOverseer_MortalStrike", 20000, 0)
	pUnit:RegisterEvent("IOverseer_Rend", 50000, 0)
end

function IOverseer_MortalStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32736,pUnit:GetClosestPlayer())
end

function IOverseer_Rend(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11977,pUnit:GetClosestPlayer())
end

function IOverseer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IOverseer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21808, 1, "IOverseer_OnEnterCombat")
RegisterUnitEvent(21808, 2, "IOverseer_OnLeaveCombat")
RegisterUnitEvent(21808, 4, "IOverseer_OnDied")