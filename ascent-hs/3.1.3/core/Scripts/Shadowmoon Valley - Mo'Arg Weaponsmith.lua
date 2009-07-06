--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MoArgWeaponsmith_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("MoArgWeaponsmith_ChemicalFlames", 13000, 0)
	pUnit:RegisterEvent("MoArgWeaponsmith_DrillArmor", 18000, 0)
end

function MoArgWeaponsmith_ChemicalFlames(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36253,pUnit:GetClosestPlayer())
end

function MoArgWeaponsmith_DrillArmor(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37580,pUnit:GetClosestPlayer())
end

function MoArgWeaponsmith_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function MoArgWeaponsmith_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19755, 1, "MoArgWeaponsmith_OnEnterCombat")
RegisterUnitEvent(19755, 2, "MoArgWeaponsmith_OnLeaveCombat")
RegisterUnitEvent(19755, 4, "MoArgWeaponsmith_OnDied")