--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Borak_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Borak_SliceAndDice", 15000, 0)
	pUnit:RegisterEvent("Borak_Eviscerate", 5000, 0)
end

function Borak_SliceAndDice(pUnit,Event)
	pUnit:FullCastSpellOnTarget(30470,pUnit:GetClosestPlayer())
end

function Borak_Eviscerate(pUnit,Event)
	pUnit:FullCastSpellOnTarget(27611,pUnit:GetClosestPlayer())
end

function Borak_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Borak_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21293, 1, "Borak_OnEnterCombat")
RegisterUnitEvent(21293, 2, "Borak_OnLeaveCombat")
RegisterUnitEvent(21293, 4, "Borak_OnDied")