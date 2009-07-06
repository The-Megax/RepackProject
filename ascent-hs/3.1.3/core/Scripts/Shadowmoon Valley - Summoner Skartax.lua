--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SummonerSkartax_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("SummonerSkartax_Incinerate", 5000, 0)
	pUnit:RegisterEvent("SummonerSkartax_ShadowBolt", 9000, 0)
end

function SummonerSkartax_Incinerate(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38401,pUnit:GetClosestPlayer())
end

function SummonerSkartax_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12471,pUnit:GetClosestPlayer())
end

function SummonerSkartax_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SummonerSkartax_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21207, 1, "SummonerSkartax_OnEnterCombat")
RegisterUnitEvent(21207, 2, "SummonerSkartax_OnLeaveCombat")
RegisterUnitEvent(21207, 4, "SummonerSkartax_OnDied")