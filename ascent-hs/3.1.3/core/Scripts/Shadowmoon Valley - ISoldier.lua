--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ISoldier_OnEnterCombat(pUnit,Event)
 if pUnit:GetHealthPct() == 92 then
	pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end
end

RegisterUnitEvent(22075, 1, "ISoldier_OnEnterCombat")