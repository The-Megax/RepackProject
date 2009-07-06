--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Markaru_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Markaru_Spit",2500,0)
end

function Markaru_Spit(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36627,pUnit:GetClosestPlayer())
end

function Markaru_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Markaru_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20775, 1, "Markaru_OnEnterCombat")
RegisterUnitEvent (20775, 2, "Markaru_OnLeaveCombat")
RegisterUnitEvent (20775, 4, "Markaru_OnDied")
