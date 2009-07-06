--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AnchoriteCaalen_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AnchoriteCaalen_HolySmite", 1540, 0)
	pUnit:RegisterEvent("AnchoriteCaalen_HolySmite", 5000, 0)
end

function AnchoriteCaalen_HolySmite(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36176,pUnit:GetClosestPlayer())
end

function AnchoriteCaalen_GreaterHeal(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35096,pUnit:GetRandomFriend())
end

function AnchoriteCaalen_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AnchoriteCaalen_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22862, 1, "AnchoriteCaalen_OnEnterCombat")
RegisterUnitEvent (22862, 2, "AnchoriteCaalen_OnLeaveCombat")
RegisterUnitEvent (22862, 4, "AnchoriteCaalen_OnDied")