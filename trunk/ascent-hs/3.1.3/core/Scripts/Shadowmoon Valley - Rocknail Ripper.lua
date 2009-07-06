--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RocknailRipper_OnEnterCombat(pUnit,Event)
	pUnit:RegisterUnitEvent("RocknailRipper_Rip", 11000, 0)
end

function RocknailRipper_Rip(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37937,pUnit:GetClosestPlayer())
end

function RocknailRipper_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function RocknailRipper_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21478, 1, "RocknailRipper_OnEnterCombat")
RegisterUnitEvent(21478, 2, "RocknailRipper_OnLeaveCombat")
RegisterUnitEvent(21478, 4, "RocknailRipper_OnDied")