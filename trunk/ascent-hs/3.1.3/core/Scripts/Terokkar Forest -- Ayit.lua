--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


-- This is a simple script just use shield bash every once and a while

function Ayit_ShieldBash(pUnit)
	pUnit:CastSpellOnTarget(11972)
end

function Ayit_OnCombat(pUnit, event)
	local cast = math.random(7500,10000)
	pUnit:RegisterEvent("Ayit_ShieldBash", cast, 0)
end

RegisterUnitEvent(18540, 1, "Ayit_OnCombat")
