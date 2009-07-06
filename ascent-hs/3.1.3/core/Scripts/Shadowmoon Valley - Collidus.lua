--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Collidus_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38932,pUnit:GetClosestPlayer())
	pUnit:FullCastSpellOnTarget(36414,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Collidus_FocusedBursts", 40000, 0)
	pUnit:RegisterEvent("Collidus_Scream", 40000, 0)
end

function Collidus_FocusedBursts(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36414,pUnit:GetClosestPlayer())
end

function Collidus_Scream(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34322,pUnit:GetClosestPlayer())
end

function Collidus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Collidus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(18694, 1, "Collidus_OnEnterCombat")
RegisterUnitEvent(18694, 2, "Collidus_OnLeaveCombat")
RegisterUnitEvent(18694, 4, "Collidus_OnDied")