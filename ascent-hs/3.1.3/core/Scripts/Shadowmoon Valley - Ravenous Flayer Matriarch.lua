--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RavenousFlayerMatriarch_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(36464)
	pUnit:RegisterEvent("RavenousFlayerMatriarch_GushingWound", 25000, 0)
end

function RavenousFlayerMatriarch_GushingWound(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38363,pUnit:GetClosestPlayer())
end

function RavenousFlayerMatriarch_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function RavenousFlayerMatriarch_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21205, 1, "RavenousFlayerMatriarch_OnEnterCombat")
RegisterUnitEvent(21205, 2, "RavenousFlayerMatriarch_OnLeaveCombsat")
RegisterUnitEvent(21205, 4, "RavenousFlayerMatriarch_OnDied")