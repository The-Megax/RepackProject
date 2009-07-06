--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ISoul_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ISoul_Totem", 11000, 0)
end

function ISoul_Totem(pUnit,Event)
	pUnit:CastSpell(11969)
end

function ISoul_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ISoul_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19757, 1, "ISoul_OnEnterCombat")
RegisterUnitEvent(19757, 2, "ISoul_OnLeaveCombat")
RegisterUnitEvent(19757, 4, "ISoul_OnDied")