--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function OronokTornheart_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("OronokTornheart_ChainLightning", 1200, 0)
	pUnit:RegisterEvent("OronokTornheart_FrostShock", 16000, 0)
	pUnit:RegisterEvent("OronokTornheart_HealingWave", 5000, 0)
end

function OronokTornheart_ChainLightning(pUnit,Event)
	pUnit:FullCastSpellOnTarget(16006,pUnit:GetClosestPlayer())
end

function OronokTornheart_FrostShock(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12548,pUnit:GetClosestPlayer())
end

function OronokTornheart_HealingWave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12491,pUnit:GetRandomFriend())
end

function OronokTornheart_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function OronokTornheart_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21183, 1, "OronokTornheart_OnEnterCombat")
RegisterUnitEvent(21183, 2, "OronokTornheart_OnLeaveCombsat")
RegisterUnitEvent(21183, 4, "OronokTornheart_OnDied")