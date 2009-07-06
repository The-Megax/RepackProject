--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Zandras_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Zandras_FelShackles", 11000, 0)
end

function Zandras_FelShackles(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38051,pUnit:GetClosestPlayer())
end

function Zandras_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Zandras_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21249, 1, "Zandras_OnEnterCombat")
RegisterUnitEvent(21249, 2, "Zandras_OnLeaveCombat")
RegisterUnitEvent(21249, 4, "Zandras_OnDied")