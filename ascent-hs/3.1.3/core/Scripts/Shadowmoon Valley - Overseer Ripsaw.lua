--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function OverseerRipsaw_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("OverseerRipsaw_GushingWound", 25000, 0)
	pUnit:RegisterEvent("OverseerRipsaw_SawBlade", 2500, 0)
end

function OverseerRipsaw_GushingWound(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35321,pUnit:GetClosestPlayer())
end

function OverseerRipsaw_SawBlade(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32735,pUnit:GetClosestPlayer())
end

function OverseerRipsaw_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function OverseerRipsaw_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21499, 1, "OverseerRipsaw_OnEnterCombat")
RegisterUnitEvent(21499, 2, "OverseerRipsaw_OnLeaveCombsat")
RegisterUnitEvent(21499, 4, "OverseerRipsaw_OnDied")