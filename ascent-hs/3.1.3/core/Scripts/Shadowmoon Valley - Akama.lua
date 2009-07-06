--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Akama_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Akama_Lightning", 1540, 0)
end

function Akama_Lightning(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39945,pUnit:GetClosestPlayer())
end

function Akama_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Akama_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21700, 1, "Akama_OnEnterCombat")
RegisterUnitEvent (21700, 2, "Akama_OnLeaveCombat")
RegisterUnitEvent (21700, 4, "Akama_OnDied")