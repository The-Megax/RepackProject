--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AshtongueWorker_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AshtongueWorker_PierceArmor", 45000, 0)
end

function AshtongueWorker_PierceArmor(pUnit,Event)
	pUnit:FullCastSpellOnTarget(6016,pUnit:GetClosestPlayer())
end

function AshtongueWorker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AshtongueWorker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21455, 1, "AshtongueWorker_OnEnterCombat")
RegisterUnitEvent (21455, 2, "AshtongueWorker_OnLeaveCombat")
RegisterUnitEvent (21455, 4, "AshtongueWorker_OnDied")