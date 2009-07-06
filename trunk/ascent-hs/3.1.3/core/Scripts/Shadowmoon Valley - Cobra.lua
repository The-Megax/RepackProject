--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Cobra_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Cobra_Spell", 11000, 0)
end

function Cobra_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38030,pUnit:GetClosestPlayer())
end

function Cobra_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Cobra_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(19784, 1, "Cobra_OnEnterCombat")
RegisterUnitEvent(19784, 2, "Cobra_OnLeaveCombat")
RegisterUnitEvent(19784, 4, "Cobra_OnDied")