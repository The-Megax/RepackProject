--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Uylaru_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Uylaru_CorruptedSearingTotem", 20000, 0)
	pUnit:RegisterEvent("Uylaru_FlameShock", 16000, 0)
end

function Uylaru_CorruptedSearingTotem(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38581,pUnit:GetClosestPlayer())
end

function Uylaru_FlameShock(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15039,pUnit:GetClosestPlayer())
end

function Uylaru_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Uylaru_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21710, 1, "Uylaru_OnEnterCombat")
RegisterUnitEvent(21710, 2, "Uylaru_OnLeaveCombat")
RegisterUnitEvent(21710, 4, "Uylaru_OnDied")