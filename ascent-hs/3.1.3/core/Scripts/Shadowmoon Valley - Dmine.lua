--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Dmine_OnEnterCombat(pUnit,Event)
	pUnit:GetMainTank()
	pUnit:CastSpell(5)
end

function Dmine_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dmine_OnDied(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38108,pUnit:GetMainTank())
end

RegisterUnitEvent(22315, 2, "Dmine_OnEnterCombat")
RegisterUnitEvent(22315, 2, "Dmine_LeaveCombat")
RegisterUnitEvent(22315, 4, "Dmine_OnDied")