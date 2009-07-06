--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BlackCat_OnEnterCombat(pUnit,Event)
	pUnit:SendChatMessage(12, 0, "Meow!")
end

function BlackCat_OnDeath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39477,pUnit:GetClosestPlayer())
end

RegisterUnitEvent(22816, 1, "BlackCat_OnEnterCombat")
RegisterUnitEvent(22816, 4, "BlackCat_OnDeath")