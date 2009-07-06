--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function IAgonizer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IAgonizer_Firebolt", 6000, 0)
end

function IAgonizer_Firebolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36227,pUnit:GetClosestPlayer())
end

function IAgonizer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IAgonizer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19801, 1, "IAgonizer_OnEnterCombat")
RegisterUnitEvent(19801, 2, "IAgonizer_OnLeaveCombat")
RegisterUnitEvent(19801, 4, "IAgonizer_OnDied")