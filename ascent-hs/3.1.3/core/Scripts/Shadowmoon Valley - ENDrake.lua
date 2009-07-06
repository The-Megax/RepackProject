--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ENDrake_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38775)
	pUnit:RegisterEvent("ENDrake_Spell", 13000, 0)
end

function ENDrake_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
end

function ENDrake_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ENDrake_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21722, 1, "ENDrake_OnEnterCombat")
RegisterUnitEvent(21722, 2, "ENDrake_OnLeaveCombat")
RegisterUnitEvent(21722, 4, "ENDrake_OnDeath")