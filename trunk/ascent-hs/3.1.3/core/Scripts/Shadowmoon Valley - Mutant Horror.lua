--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MutantHorror_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(8599)
	pUnit:RegisterEvent("MutantHorror_MutatedBlood", 45000, 0)
end

function MutantHorror_MutatedBlood(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37950,pUnit:GetClosestPlayer())
end

function MutantHorror_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function MutantHorror_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21305, 1, "MutantHorror_OnEnterCombat")
RegisterUnitEvent(21305, 2, "MutantHorror_OnLeaveCombat")
RegisterUnitEvent(21305, 4, "MutantHorror_OnDied")