--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DSubjugator_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("DSubjugator_Shadowbolt", 9000, 0)
end

function DSubjugator_Shadowbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
end

function DSubjugator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end
function DSubjugator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21718, 1, "DSubjugator_OnEnterCombat")
RegisterUnitEvent(21718, 2, "DSubjugator_OnLeaveCombat")
RegisterUnitEvent(21718, 4, "DSubjugator_OnDied")