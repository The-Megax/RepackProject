--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CDefender_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CDefender_Spell1", 7000, 0)
	pUnit:RegisterEvent("CDefender_Spell2", 16000, 0)
end

function CDefender_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38233,pUnit:GetClosestPlayer())
end

function CDefender_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38031,pUnit:GetClosestPlayer())
end

function CDefender_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CDefender_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19762, 1, "CDefender_OnEnterCombat")
RegisterUnitEvent(19762, 2, "CDefender_OnLeaveCombat")
RegisterUnitEvent(19762, 4, "CDefender_OnDied")