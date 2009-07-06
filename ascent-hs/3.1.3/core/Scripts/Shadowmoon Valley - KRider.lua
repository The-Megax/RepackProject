--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KRider_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("KRider_SnapKick", 6000, 0)
	pUnit:RegisterEvent("KRider_MortalStrike", 13000, 0)
end

function KRider_SnapKick(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15618,pUnit:GetClosestPlayer())
end

function KRider_MortalStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(19643,pUnit:GetClosestPlayer())
end

function KRider_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function KRider_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19364, 1, "KRider_OnEnterCombat")
RegisterUnitEvent(19364, 2, "KRider_OnLeaveCombat")
RegisterUnitEvent(19364, 4, "KRider_OnDied")