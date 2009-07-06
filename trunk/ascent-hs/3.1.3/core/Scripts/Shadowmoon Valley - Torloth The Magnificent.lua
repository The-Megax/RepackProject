--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function TorlothTheMagnificent_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("TorlothTheMagnificent_Cleave", 10000, 0)
	pUnit:RegisterEvent("TorlothTheMagnificent_Shadowfury", 9000, 0)
	pUnit:RegisterEvent("TorlothTheMagnificent_SpellReflection", 12000, 0)
end

function TorlothTheMagnificent_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15284,pUnit:GetClosestPlayer())
end

function TorlothTheMagnificent_Shadowfury(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39082,pUnit:GetClosestPlayer())
end

function TorlothTheMagnificent_SpellReflection(pUnit,Event)
	pUnit:CastSpell(33961)
end

function TorlothTheMagnificent_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function TorlothTheMagnificent_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22076, 1, "TorlothTheMagnificent_OnEnterCombat")
RegisterUnitEvent(22076, 2, "TorlothTheMagnificent_OnLeaveCombat")
RegisterUnitEvent(22076, 4, "TorlothTheMagnificent_OnDied")