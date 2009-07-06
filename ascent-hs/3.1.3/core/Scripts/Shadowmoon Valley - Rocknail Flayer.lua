--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RocknailFlayer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterUnitEvent("RocknailFlayer_FlayedFlesh", 30000, 0)
end

function RocknailFlayer_FlayedFlesh(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37937,pUnit:GetClosestPlayer())
end

function RocknailFlayer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function RocknailFlayer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21477, 1, "RocknailFlayer_OnEnterCombat")
RegisterUnitEvent(21477, 2, "RocknailFlayer_OnLeaveCombat")
RegisterUnitEvent(21477, 4, "RocknailFlayer_OnDied")