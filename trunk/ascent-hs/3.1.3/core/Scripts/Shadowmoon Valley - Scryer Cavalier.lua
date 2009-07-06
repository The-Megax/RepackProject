--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScryerCavalier_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(30931)
	pUnit:registerEvent("ScryerCavalier_Spellbreaker", 24000, 0)
end

function ScryerCavalier_Spellbreaker(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end

function ScryerCavalier_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ScryerCavalier_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22967, 1, "ScryerCavalier_OnEnterCombat")
RegisterUnitEvent(22967, 2, "ScryerCavalier_OnLeaveCombat")
RegisterUnitEvent(22967, 4, "ScryerCavalier_OnDied")