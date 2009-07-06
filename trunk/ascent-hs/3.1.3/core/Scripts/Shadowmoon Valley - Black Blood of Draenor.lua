--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BBOD_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("BBOD_Spell", 60000, 0)
end

function BBOD_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(7279,pUnit:GetClosestPlayer())
end

function BBOD_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BBOD_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (23286, 1, "BBOD_OnEnterCombat")
RegisterUnitEvent (23286, 2, "BBOD_OnLeaveCombat")
RegisterUnitEvent (23286, 4, "BBOD_OnDied")