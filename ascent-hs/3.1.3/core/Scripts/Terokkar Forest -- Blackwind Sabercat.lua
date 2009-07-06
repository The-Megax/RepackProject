--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BlackwindSabercat_Rip(pUnit)
	pUnit:CastSpellOnTarget(33912)
end

function BlackwindSabercat_OnCombat(pUnit, event)
	local cast = math.random(6700,1190)
	pUnit:RegisterEvent("BlackWindSabercat_rip", cast, 0)
end

RegisterUnitEvent(21723, 1, "BlackwindSabercat_OnCombat")




