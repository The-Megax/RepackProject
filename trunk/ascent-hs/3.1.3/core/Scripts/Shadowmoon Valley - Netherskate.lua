--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Netherskate_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Netherskate_DrainMana", 1000, 0)
	pUnit:RegisterEvent("Netherskate_TailSting", 32000, 0)
end

function Netherskate_DrainMana(pUnit,Event)
 if pUnit:GetManaPct() == 92 then
	pUnit:FullCastSpellOnTarget(17008,pUnit:GetRandomPlayer(4))
end
end

function Netherskate_TailSting(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36659,pUnit:GetClosestPlayer())
end

function Netherskate_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Netherskate_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21901, 1, "Netherskate_OnEnterCombat")
RegisterUnitEvent(21901, 2, "Netherskate_OnLeaveCombat")
RegisterUnitEvent(21901, 4, "Netherskate_OnDied")