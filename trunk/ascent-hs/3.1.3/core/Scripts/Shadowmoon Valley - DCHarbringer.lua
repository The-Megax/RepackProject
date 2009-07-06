--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DCHarbinger_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCHarbinger_Spell", 13000, 0)
	pUnit:RegisterEvent("DCHarbinger_Heal", 25000, 0)
end

function DCHarbinger_Spell(pUnit,Event)
	pUnit:FullCastSpelOnTarget(15496,pUnit:GetClosestPlayer())
end

function DCHarbinger_Heal(pUnit,Event)
	pUnit:FullCastSpelOnTarget(16588,pUnit:GetRandomFriend())
end

function DCHarbinger_Died(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCHarbinger_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21384, 1, "DCHarbinger_OnEnterCombat")
RegisterUnitEvent(21384, 4, "DCHarbinger_Died")
RegisterUnitEvent(21384, 2, "DCHarbinger_LeaveCombat")