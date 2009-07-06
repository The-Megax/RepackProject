--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AuchenaiWarrior_WhirlWind(pUnit)
	pUnit:CastSpellOnTarget(38619)
end

function AuchenaiWarrior_OnCombat(pUnit, event)
	local cast = math.random(8900,12000)
	pUnit:RegisterEvent("AuchenaiWarrior_WhirlWind", cast, 0)
end

RegisterUnitEvent(21852, 1, "AuchenaiWarrior_OnCombat")

