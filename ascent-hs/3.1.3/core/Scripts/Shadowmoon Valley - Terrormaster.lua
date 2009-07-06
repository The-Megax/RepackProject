--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Terrormaster_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Terrormaster_Cleave", 9000, 0)
	pUnit:RegisterEvent("Terrormaster_Fear", 24000, 0)
end

function Terrormaster_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function Terrormaster_Fear(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38154,pUnit:GetClosestPlayer())
end

function Terrormaster_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Terrormaster_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21314, 1, "Terrormaster_OnEnterCombat")
RegisterUnitEvent(21314, 2, "Terrormaster_OnLeaveCombat")
RegisterUnitEvent(21314, 4, "Terrormaster_OnDied")