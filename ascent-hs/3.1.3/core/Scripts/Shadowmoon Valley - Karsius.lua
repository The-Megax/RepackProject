--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Karsius_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37789,pUnit:GetClosestPlayer())
end

function Karsius_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Karsius_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21877, 1, "Karsius_OnEnterCombat")
RegisterUnitEvent(21877, 2, "Karsius_OnLeaveCombat")
RegisterUnitEvent(21877, 4, "Karsius_OnDied")