--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AirSpirit_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AirSpirit_Spell1", 11000, 0)
	pUnit:RegisterEvent("AirSpirit_Spell2", 25000, 0)
end

function AirSpirit_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12058,pUnit:GetClosestPlayer())
end

function AirSpirit_Spell2(punit,Event)
	pUnit:FullCastSpellOnTarget(32717,pUnit:GetClosestPlayer())
end

function AirSpirit_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AirSpirit_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21060, 1, "AirSpirit_OnEnterCombat")
RegisterUnitEvent(21060, 2, "AirSpirit_OnLeaveCombat")
RegisterUnitEvent(21060, 4, "AirSpirit_OnDeath")