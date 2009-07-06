--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Eykenen_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(32734)
	pUnit:RegisterEvent("Eykenen_EarthShield", 43000, 0)
	pUnit:RegisterEvent("Eykenen_EarthShock", 10000, 0)
end

function Eykenen_EarthShield(pUnit,Event)
	pUnit:CastSpell(32734)
end

function Eykenen_EarthShock(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13281,pUnit:GetClosestPlayer())
end

function Eykenen_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Eykenen_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21709, 1, "Eykenen_OnEnterCombat")
RegisterUnitEvent(21709, 1, "Eykenen_OnLeaveCombat")
RegisterUnitEvent(21709, 1, "Eykenen_OnDeath")