--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function LVindicator_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13005,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("LVindicator_Exorcism", 11000, 0)
	pUnit:RegisterEvent("LVindicator_HolyLight", 16000, 0)
end

function LVindicator_Exorcism(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33632,pUnit:GetClosestPlayer())
end

function LVindicator_HolyLight(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13952,pUnit:GetRandomFriend(0))
end

function LVindicator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function LVindicator_OnDied(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13903,pUnit:GetRandomFriend(0))
end

RegisterUnitEvent(22861, 1, "LVindicator_OnEnterCombat")
RegisterUnitEvent(22861, 2, "LVindicator_OnLeaveCombat")
RegisterUnitEvent(22861, 4, "LVindicator_OnDied")