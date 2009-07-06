--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SpawnOfUvuros_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36405,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("SpawnOfUvuros_Bite", 4000, 0)
	pUnit:RegisterEvent("SpawnOfUvuros_DoubleBreath", 15000, 0)
	pUnit:RegisterEvent("SpawnOfUvuros_Growl", 1000, 1)
	pUnit:RegisterEvent("SpawnOfUvuros_LavaBreath", 15000, 0)
	pUnit:RegisterEvent("SpawnOfUvuros_Stomp", 9000, 0)
end

function SpawnOfUvuros_Bite(pUnit,Event)
	pUnit:FullCastSpellOnTarget(27050,pUnit:GetClosestPlayer())
end

function SpawnOfUvuros_DoubleBreath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36406,pUnit:GetClosestPlayer())
end

function SpawnOfUvuros_Growl(pUnit,Event)
	pUnit:FullCastSpellOnTarget(14921,pUnit:GetClosestPlayer())
end

function SpawnOfUvuros_LavaBreath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(58610,pUnit:GetClosestPlayer())
end

function SpawnOfUvuros_Stomp(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36405,pUnit:GetClosestPlayer())
end

function SpawnOfUvuros_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SpawnOfUvuros_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21108, 1, "SpawnOfUvuros_OnEnterCombat")
RegisterUnitEvent(21108, 2, "SpawnOfUvuros_OnLeaveCombat")
RegisterUnitEvent(21108, 4, "SpawnOfUvuros_OnDied")