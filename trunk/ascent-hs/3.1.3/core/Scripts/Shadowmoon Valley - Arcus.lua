--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Arcus_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41440,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Arcus_Spell1", 10000, 0)
	pUnit:RegisterEvent("Arcus_Spell2", 30000, 0)
end

function Arcus_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41448,pUnit:GetClosestPlayer())
end

function Arcus_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38370,pUnit:GetClosestPlayer())
end

function Arcus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Arcus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23452, 1, "Arcus_OnEnterCombat")
RegisterUnitEvent(23452, 2, "Arcus_OnLeaveCombat")
RegisterUnitEvent(23452, 4, "Arcus_OnDied")