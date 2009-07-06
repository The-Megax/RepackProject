--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DNPeon_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DNPeon_Spell", 46000, 0)
end

function DNPeon_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15572,pUnit:GetClosestPlayer())
end

function DNPeon_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DNPeon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22252, 1, "DNPeon_OnEnterCombat")
RegisterUnitEvent(22252, 2, "DNPeon_LeaveCombat")
RegisterUnitEvent(22252, 4, "DNPeon_OnDied")