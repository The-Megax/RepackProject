--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Makazradon_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Makazradon_Cripple", 45000, 0)
	pUnit:RegisterEvent("Makazradon_FelCleave", 19000, 0)
	pUnit:RegisterEvent("Makazradon_RainOfFire", 18000, 0)
end

function Makazradon_Cripple(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11443,pUnit:GetClosestPlayer())
end

function Makazradon_FelCleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38742,pUnit:GetClosestPlayer())
end

function Makazradon_RainOfFire(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38741,pUnit:GetClosestPlayer())
end

function Makazradon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Makazradon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21501, 1, "Makazradon_OnEnterCombat")
RegisterUnitEvent(21501, 2, "Makazradon_OnLeaveCombat")
RegisterUnitEvent(21501, 4, "Makazradon_OnDied")