--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DNetherDrake_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DNetherDrake_ArcaneBlast", 11000, 0)
end

function DNetherDrake_ArcaneBlast(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38344,pUnit:GetClosestPlayer())
end

function DNetherDrake_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DNetherDrake_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22000, 1, "DNetherDrake_OnEnterCombat")
RegisterUnitEvent(22000, 2, "DNetherDrake_LeaveCombat")
RegisterUnitEvent(22000, 4, "DNetherDrake_OnDied")