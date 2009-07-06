--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function IRavager_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33645,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("IRavager_Cleave", 22000, 0)
	pUnit:RegisterEvent("IRavager_Cutdown", 9000, 0)
	pUnit:RegisterEvent("IRavager_Shout", 60000, 0)
end

function IRavager_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function IRavager_Cutdown(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32009,pUnit:GetClosestPlayer())
end

function IRavager_Shout(pUnit,Event)
	pUnit:CastSpell(16244)
end

function IRavager_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IRavager_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22857, 1, "IRavager_OnEnterCombat")
RegisterUnitEvent(22857, 2, "IRavager_OnLeaveCombat")
RegisterUnitEvent(22857, 4, "IRavager_OnDied")