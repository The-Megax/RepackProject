--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DDPeon_Spell(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(40732)
	pUnit:RegisterEvent("DDPeon_Spell2", 10000, 0)
end

function DDPeon_Spell2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(40735)
	pUnit:RegisterEvent("DDPeon_Spell3", 20000, 0)
end

function DDPeon_Spell3(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(40714)
	pUnit:RegisterEvent("DDPeon_Spell1", 30000, 0)
end

function DDPeon_Start(pUnit, Event)
	pUnit:RegisterEvent("DDPeon_Spell", 1000, 0)
end

RegisterUnitEvent(21316, 6, "DDPeon_Start")