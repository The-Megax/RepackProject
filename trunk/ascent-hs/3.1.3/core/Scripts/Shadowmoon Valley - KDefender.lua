--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KDefender_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("KDefender_Cleave", 11000, 0)
end

function KDefender_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetMainTank())
end

function KDefender_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function KDefender_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19362, 1, "KDefender_OnEnterCombat")
RegisterUnitEvent(19362, 2, "KDefender_OnLeaveCombat")
RegisterUnitEvent(19362, 4, "KDefender_OnDied")