--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KotCistern_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("KotCistern_Waterbolt", 4000, 0)
end

function KotCistern_Waterbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32011,pUnit:GetClosestPlayer())
end

function KotCistern_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function KotCistern_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20795, 1, "KotCistern_OnEnterCombat")
RegisterUnitEvent(20795, 2, "KotCistern_OnLeaveCombat")
RegisterUnitEvent(20795, 4, "KotCistern_OnDied")