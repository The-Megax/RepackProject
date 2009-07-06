--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ISlayer_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35570,pUnit:GetClosestPlayer())
end

RegisterUnitEvent(21639, 1, "ISlayer_OnEnterCombat")