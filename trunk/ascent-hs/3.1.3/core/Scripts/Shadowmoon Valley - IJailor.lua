--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function IJailor_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IJailor_FelShackles", 24000, 0)
end

function IJailor_FelShackles(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38051,pUnit:GetClosestPlayer())
end

function IJailor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IJailor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21520, 1, "IJailor_OnEnterCombat")
RegisterUnitEvent(21520, 2, "IJailor_OnLeaveCombat")
RegisterUnitEvent(21520, 4, "IJailor_OnDied")