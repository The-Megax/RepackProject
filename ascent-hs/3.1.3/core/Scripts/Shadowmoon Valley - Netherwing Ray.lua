--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function NetherwingRay_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("NetherwingRay_DrainMana", 1000, 0)
	pUnit:RegisterEvent("NetherwingRay_TailSting", 32000, 0)
end

function NetherwingRay_DrainMana(pUnit,Event)
 if pUnit:GetManaPct() == 92 then
	pUnit:FullCastSpellOnTarget(17008,pUnit:GetRandomPlayer(4))
end
end

function NetherwingRay_TailSting(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36659,pUnit:GetClosestPlayer())
end

function NetherwingRay_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function NetherwingRay_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23501, 1, "NetherwingRay_OnEnterCombat")
RegisterUnitEvent(23501, 2, "NetherwingRay_OnLeaveCombsat")
RegisterUnitEvent(23501, 4, "NetherwingRay_OnDied")