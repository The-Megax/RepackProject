--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Haalum_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Haalum_Chain", 15000, 0)
	pUnit:RegisterEvent("Haalum_LBolt", 9000, 0)
end

function Haalum_Chain(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12058,pUnit:GetClosestPlayer())
end

function Haalum_LBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9532,pUnit:GetClosestPlayer())
end

function Haalum_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Haalum_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21711, 1, "Haalum_OnEnterCombat")
RegisterUnitEvent(21711, 2, "Haalum_OnLeaveCombat")
RegisterUnitEvent(21711, 4, "Haalum_OnDied")