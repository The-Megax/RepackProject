--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DDrakeRider_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(6660,pUnit:GetClosestPlayer())
end

function DDrakeRider_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DDrakeRider_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21719, 1, "DDrakeRider_OnEnterCombat")
RegisterUnitEvent(21719, 2, "DDrakeRider_LeaveCombat")
RegisterUnitEvent(21719, 4, "DDrakeRider_OnDied")