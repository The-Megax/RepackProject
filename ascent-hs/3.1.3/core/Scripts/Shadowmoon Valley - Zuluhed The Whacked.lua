--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ZuluhedTheWhacked_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38853)
	pUnit:RegisterEvent("ZuluhedTheWhacked_DemonPortal", 35000, 0)
end

function ZuluhedTheWhacked_DemonPortal(pUnit,Event)
	pUnit:CastSpell(38876)
end

function ZuluhedTheWhacked_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ZuluhedTheWhacked_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(11980, 1, "ZuluhedTheWhacked_OnEnterCombat")
RegisterUnitEvent(11980, 2, "ZuluhedTheWhacked_OnLeaveCombat")
RegisterUnitEvent(11980, 4, "ZuluhedTheWhacked_OnDied")