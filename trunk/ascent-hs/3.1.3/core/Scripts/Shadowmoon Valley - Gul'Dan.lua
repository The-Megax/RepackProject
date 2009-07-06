--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Guldan_Channel(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(35996)
end

function Guldan_Start(pUnit, Event)
	pUnit:RegisterEvent("Guldan_Channel", 1000, 0)
end

RegisterUnitEvent(17008, 6, "Guldan_Start")