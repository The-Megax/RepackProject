--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DCScorncrow_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCScorncrow_FrostBolt", 12000, 0)
end

function DCScorncrow_Frostbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9672,pUnit:GetClosestPlayer())
end


function DCScorncrow_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCScorncrow_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21385, 1, "DCScorncrow_OnEnterCombat")
RegisterUnitEvent(21385, 2, "DCScorncrow_LeaveCombat")
RegisterUnitEvent(21385, 4, "DCScorncrow_OnDied")