--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DFelboar_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(36462)
	pUnit:FullCastSpellOnTarget(22120,pUnit:GetClosestPlayer())
end

function DFelboar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DFelboar_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21195, 1, "DFelboar_OnEnterCombat")
RegisterUnitEvent(21195, 2, "DFelboar_LeaveCombat")
RegisterUnitEvent(21195, 4, "DFelboar_OnDied")