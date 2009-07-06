--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DShaman_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DShaman_LShield", 20000, 0)
	pUnit:RegisterEvent("DShaman_Bloodlust", 33000, 0)
end

function DShaman_LShield(pUnit,Event)
	pUnit:CastSpell(12550)
end

function DShaman_Bloodlust(pUnit,Event)
	pUnit:CastSpell(6742)
end

function DShaman_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DShaman_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21720, 1, "DShaman_OnEnterCombat")
RegisterUnitEvent(21720, 2, "DShaman_OnLeaveCombat")
RegisterUnitEvent(21720, 4, "DShaman_OnDied")