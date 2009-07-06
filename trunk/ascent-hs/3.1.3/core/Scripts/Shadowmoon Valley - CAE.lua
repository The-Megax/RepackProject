--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CAE_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(35194)
	pUnit:RegisterEvent("CAE_LBolt", 5000, 0)
end

function CAE_LBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9532,pUnit:GetClosestPlayer())
end


function CAE_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end


function CAE_OnDiedCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21707, 1, "CAE_OnEnterCombat")
RegisterUnitEvent(21707, 2, "CAE_OnLeaveCombat")
RegisterUnitEvent(21707, 4, "CAE_OnDied")