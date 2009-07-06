--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AltarDefender_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AltarDefender_Shoot", 11000, 0)
end

function AltarDefender_Shoot(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41440,pUnit:GetClosestPlayer())
end

function AltarDefender_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AltarDefender_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (23453, 1, "Alandien_OnEnterCombat")
RegisterUnitEvent (23453, 2, "Alandien_OnLeaveCombat")
RegisterUnitEvent (23453, 4, "Alandien_OnDiedCombat")