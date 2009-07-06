--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BatRiderGuard_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38066,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("BatRiderGuard_Spell", 25000, 0)
end

function BatRiderGuard_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38066,pUnit:GetClosestPlayer())
end

function BatRiderGuard_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BatRiderGuard_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(15242, 1, "BatRiderGuard_OnEnterCombat")
RegisterUnitEvent(15242, 2, "BatRiderGuard_OnLeaveCombat")
RegisterUnitEvent(15242, 4, "BatRiderGuard_OnDied")