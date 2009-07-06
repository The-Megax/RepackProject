--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AuchenaiInitiate_KnockDown(pUnit)
	pUnit:CastSpellOnTarget(37592)
end

function AuchenaiInitiate_Whirlwind(pUnit)
	pUnit:CastSpellOnTarget(38619)
end
	
function AuchenaiInitiate_OnCombat(pUnit, event)
	local cast1 = math.random(7800,12000)
	local cast2 = math.random(12000,14000)
	pUnit:RegisterEvent("AuchenaiInitiate_Whirlwind", cast1, 0)
	pUnit:RegisterEvent("AuchenaiInitiate_KnockDown", cast2, 0)
end

RegisterUnitEvent(21284, 1, "AuchenaiInitiate_OnCombat")
