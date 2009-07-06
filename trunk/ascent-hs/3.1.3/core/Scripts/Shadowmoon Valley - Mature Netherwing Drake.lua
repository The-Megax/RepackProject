--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MatureNetherwingDrake_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38502)
	pUnit:RegisterEvent("MatureNetherwingDrake_IntangiblePresence", 16000, 0)
	pUnit:RegisterEvent("MatureNetherwingDrake_Netherbreath", 5000, 0)
end

function MatureNetherwingDrake_IntangiblePresence(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
end

function MatureNetherwingDrake_Netherbreath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38467,pUnit:GetClosestPlayer())
end

function MatureNetherwingDrake_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function MatureNetherwingDrake_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21648, 1, "MatureNetherwingDrake_OnEnterCombat")
RegisterUnitEvent(21648, 2, "MatureNetherwingDrake_OnLeaveCombat")
RegisterUnitEvent(21648, 4, "MatureNetherwingDrake_OnDied")