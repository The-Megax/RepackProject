--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Lothros_OnEnterCombat(pUnit,Event)
	pUnit:RegisterUnitEvent("Lothros_Spell", 60000, 0)
end

function Lothros_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38167,pUnit:GetClosestPlayer())
end

function Lothros_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Lothros_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21928, 1, "Lothros_OnEnterCombat")
RegisterUnitEvent(21928, 2, "Lothros_OnLeaveCombat")
RegisterUnitEvent(21928, 4, "Lothros_OnDied")