--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Wrathstalker_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Wrathstalker_Cleave", 11000, 0)
end

function Wrathstalker_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33805,pUnit:GetClosestPlayer())
end

function Wrathstalker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Wrathstalker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21249, 1, "Wrathstalker_OnEnterCombat")
RegisterUnitEvent(21249, 2, "Wrathstalker_OnLeaveCombat")
RegisterUnitEvent(21249, 4, "Wrathstalker_OnDied")