--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RemnantofCorruption_OnSpawn(pUnit,Event)
	pUnit:CastSpell(39169)
end

RegisterUnitEvent(22439, 6, "RemnantofCorruption_OnSpawn")