--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Jerrikar_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Jerrikar_DarkStrike", 4000, 0)
	pUnit:RegisterEvent("Jerrikar_DiplomaticImmunity", 40000, 0)
	pUnit:RegisterEvent("Jerrikar_Silence", 30000, 0)
end

function Jerrikar_Silence(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38913,GetClosestPlayer())
end

function Jerrikar_DarkStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38926,GetClosestPlayer())
end

function Jerrikar_DiplomaticImmunity(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38916,GetClosestPlayer())
end

function Jerrikar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Jerrikar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18695, 1, "Jerrikar_OnEnterCombat")
RegisterUnitEvent (18695, 2, "Jerrikar_OnLeaveCombat")
RegisterUnitEvent (18695, 4, "Jerrikar_OnDied")