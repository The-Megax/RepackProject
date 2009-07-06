--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function FDiemetradon_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("FDiemetradon_Spell", 40000, 0)
end

function FDiemetradon_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37941,pUnit:GetClosestPlayer())
end

function FDiemetradon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function FDiemetradon_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21408, 1, "FDiemetradon_OnEnterCombat")
RegisterUnitEvent(21408, 2, "FDiemetradon_OnLeaveCombat")
RegisterUnitEvent(21408, 4, "FDiemetradon_OnDeath")