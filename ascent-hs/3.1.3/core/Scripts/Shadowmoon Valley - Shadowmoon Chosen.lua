--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ShadowmoonChosen_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ShadowmoonChosen_Uppercut", 5000, 0)
	pUnit:RegisterEvent("ShadowmoonChosen_Whirlwind", 11000, 0)
end

function ShadowmoonChosen_Uppercut(pUnit,Event)
	pUnit:FullCastSpellOnTarget(10966,pUnit:GetClosestPlayer())
end

function ShadowmoonChosen_Whirlwind(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38619,pUnit:GetClosestPlayer())
	pUnit:FullCastSpellOnTarget(38618,pUnit:GetClosestPlayer())
end

function ShadowmoonChosen_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ShadowmoonChosen_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22084, 1, "ShadowmoonChosen_OnEnterCombat")
RegisterUnitEvent(22084, 2, "ShadowmoonChosen_OnLeaveCombat")
RegisterUnitEvent(22084, 4, "ShadowmoonChosen_OnDied")