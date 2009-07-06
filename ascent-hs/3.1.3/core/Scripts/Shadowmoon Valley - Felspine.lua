--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Felspine_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Felspine_FelFlames", 11000, 0)
	pUnit:RegisterEvent("Felspine_FlamingWound", 46000, 0)
end

function Felspine_FelFlames(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38356,pUnit:GetClosestPlayer())
end

function Felspine_FlamingWound(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37941,pUnit:GetClosestPlayer())
end

function Felspine_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Felspine_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end


RegisterUnitEvent(21897, 1, "Felspine_OnEnterCombat")
RegisterUnitEvent(21897, 2, "Felspine_OnLeaveCombat")
RegisterUnitEvent(21897, 4, "Felspine_OnDied")