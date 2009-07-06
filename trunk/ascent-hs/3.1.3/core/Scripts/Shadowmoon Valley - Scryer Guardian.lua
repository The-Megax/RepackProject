--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScryerGuardian_OnEnterCombat(pUnit,Event)
	pUnit:registerEvent("ScryerGuardian_Fireball", 7000, 0)
	pUnit:registerEvent("ScryerGuardian_Scorch", 5000, 0)
	pUnit:registerEvent("ScryerGuardian_Slow", 40000, 0)
end

function ScryerGuardian_Fireball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15228,pUnit:GetClosestPlayer())
end

function ScryerGuardian_Scorch(pUnit,Event)
	pUnit:FullCastSpellOnTarget(17195,pUnit:GetClosestPlayer())
end

function ScryerGuardian_Slow(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11436,pUnit:GetClosestPlayer())
end

function ScryerGuardian_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ScryerGuardian_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19504, 1, "ScryerGuardian_OnEnterCombat")
RegisterUnitEvent(19504, 2, "ScryerGuardian_OnLeaveCombat")
RegisterUnitEvent(19504, 4, "ScryerGuardian_OnDied")