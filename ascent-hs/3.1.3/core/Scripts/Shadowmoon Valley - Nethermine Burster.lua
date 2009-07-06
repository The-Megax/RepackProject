--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function NethermineBurster_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("NethermineBurster_Poison", 2000, 0)
end

function NethermineBurster_Poison(pUnit,Event)
	pUnit:FullCastSpellOnTarget(31747,pUnit:GetClosestPlayer())
end

function NethermineBurster_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end


function NethermineBurster_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23285, 1, "NethermineBurster_OnEnterCombat")
RegisterUnitEvent(23285, 2, "NethermineBurster_OnLeaveCombat")
RegisterUnitEvent(23285, 4, "NethermineBurster_OnDied")