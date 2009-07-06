--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScorchshellPincer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ScorchshellPincer_BurningPoison", 000, 0)
end

function ScorchshellPincer_BurningPoison(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15284,pUnit:GetClosestPlayer())
end

function ScorchshellPincer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ScorchshellPincer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21864, 1, "ScorchshellPincer_OnEnterCombat")
RegisterUnitEvent(21864, 2, "ScorchshellPincer_OnLeaveCombat")
RegisterUnitEvent(21864, 4, "ScorchshellPincer_OnDied")