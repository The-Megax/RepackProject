--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Uvuros_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Uvuros_Bite", 4000, 0)
	pUnit:RegisterEvent("Uvuros_DoubleBreath", 8000, 0)
	pUnit:RegisterEvent("Uvuros_Growl", 20000, 0)
	pUnit:RegisterEvent("Uvuros_LavaBreath", 10000, 0)
	pUnit:RegisterEvent("Uvuros_TerrifyingRoar", 27000, 0)
end

function Uvuros_Bite(pUnit,Event)
	pUnit:FullCastSpellOnTarget(27050,pUnit:GetClosestPlayer())
end

function Uvuros_DoubleBreath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38361,pUnit:GetClosestPlayer())
end

function Uvuros_Growl(pUnit,Event)
	pUnit:FullCastSpellOnTarget(27047,pUnit:GetClosestPlayer())
end

function Uvuros_LavaBreath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(58610,pUnit:GetClosestPlayer())
end

function Uvuros_TerrifyingRoar(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37939,pUnit:GetClosestPlayer())
end

function Uvuros_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Uvuros_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21102, 1, "Uvuros_OnEnterCombat")
RegisterUnitEvent(21102, 2, "Uvuros_OnLeaveCombat")
RegisterUnitEvent(21102, 4, "Uvuros_OnDied")