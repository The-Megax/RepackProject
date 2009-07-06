--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ESoldier_OnEnterCombat(pUnit,Event)
 if pUnit:GetHealthPct() == 3 then
	pUnit:CastSpell(36476)
end
end

function ESoldier_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ESoldier_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22016, 1, "ESoldier_OnEnterCombat")
RegisterUnitEvent(22016, 2, "ESoldier_OnLeaveCombat")
RegisterUnitEvent(22016, 4, "ESoldier_OnDeath")