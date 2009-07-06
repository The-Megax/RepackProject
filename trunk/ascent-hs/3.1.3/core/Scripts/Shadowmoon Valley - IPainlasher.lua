--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function IPainlasher_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IPainlasher_LashOfPain", 4000, 0)
end

function IPainlasher_LashOfPain(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15968,pUnit:GetClosestPlayer())
end

function IPainlasher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IPainlasher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19800, 1, "IPainlasher_OnEnterCombat")
RegisterUnitEvent(19800, 2, "IPainlasher_OnLeaveCombat")
RegisterUnitEvent(19800, 4, "IPainlasher_OnDied")