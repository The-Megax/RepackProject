--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DCShadowmancer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCShadowmancer_ShadowBolt", 13000, 0)
	pUnit:RegisterEvent("DCShadowmancer_DarkMending", 25000, 0)
end

function DCShadowmancer_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpelOnTarget(9613,pUnit:GetClosestPlayer())
end

function DCShadowmancer_DarkMending(pUnit,Event)
	pUnit:FullCastSpelOnTarget(16588,pUnit:GetRandomFriend())
end

function DCShadowmancer_Died(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCShadowmancer_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21384, 1, "DCShadowmancer_OnEnterCombat")
RegisterUnitEvent(21384, 4, "DCShadowmancer_Died")
RegisterUnitEvent(21384, 2, "DCShadowmancer_LeaveCombat")