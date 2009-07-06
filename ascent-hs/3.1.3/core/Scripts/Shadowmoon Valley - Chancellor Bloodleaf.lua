--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ChancellorBloodleaf_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ChancellorBloodleaf_Spell1", 4000, 0)
	pUnit:RegisterEvent("ChancellorBloodleaf_Spell2", 10000, 0)
end

function ChancellorBloodleaf_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34517,pUnit:GetClosestPlayer())
end

function ChancellorBloodleaf_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15791,pUnit:GetClosestPlayer())
end

RegisterUnitEvent(22012, 1, "ChancellorBloodleaf_OnEnterCombat")
RegisterUnitEvent(22012, 2, "ChancellorBloodleaf_OnLeaveCombat")
RegisterUnitEvent(22012, 4, "ChancellorBloodleaf_OnDied")