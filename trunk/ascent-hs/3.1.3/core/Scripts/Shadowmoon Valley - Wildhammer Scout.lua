--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WildhammerScout_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33808,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("WildhammerScout_ThrowHammer", 6000, 0)
end

function WildhammerScout_ThrowHammer(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33805,pUnit:GetClosestPlayer())
	pUnit:FullCastSpellOnTarget(33806,pUnit:GetClosestPlayer())
end

function WildhammerScout_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function WildhammerScout_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19384, 1, "WildhammerScout_OnEnterCombat")
RegisterUnitEvent(19384, 2, "WildhammerScout_OnLeaveCombat")
RegisterUnitEvent(19384, 4, "WildhammerScout_OnDied")