--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function EDragonhawk_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("EDragonhawk_Firebreath", 18000, 0)
end

function EDragonhawk_Firebreath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37985,pUnit:GetClosestPlayer())
end

function EDragonhawk_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function EDragonhawk_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20502, 1, "EDragonhawk_OnEnterCombat")
RegisterUnitEvent(20502, 2, "EDragonhawk_OnLeaveCombat")
RegisterUnitEvent(20502, 4, "EDragonhawk_OnDeath")