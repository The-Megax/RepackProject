--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Asghar_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Asghar_Cleave", 3300, 0)
	pUnit:RegisterEvent("Asghar_DarkMending", 15000, 0)
end

function Asghar_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function Asghar_DarkMending(pUnit,Event)
	pUnit:CastSpell(16588)
end

function Asghar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Asghar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22025, 1, "Asghar_OnEnterCombat")
RegisterUnitEvent (22025, 2, "Asghar_OnLeaveCombat")
RegisterUnitEvent (22025, 4, "Asghar_OnDied")