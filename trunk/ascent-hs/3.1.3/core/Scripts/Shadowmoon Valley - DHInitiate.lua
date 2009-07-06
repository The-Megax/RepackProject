--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DHInitiate_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DHInitiate_SpellBreaker", 18000, 0)
end

function DHInitiate_SpellBreaker(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end

function DHInitiate_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DHInitiate_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21180, 1, "DHInitiate_OnEnterCombat")
RegisterUnitEvent(21180, 2, "DHInitiate_LeaveCombat")
RegisterUnitEvent(21180, 4, "DHInitiate_OnDied")