--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Umberhowl_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Umberhowl_ChillingHowl", 30000, 0)
	pUnit:RegisterEvent("Umberhowl_Snarl", 7000, 0)
end

function Umberhowl_ChillingHowl(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32918,pUnit:GetClosestPlayer())
end

function Umberhowl_Snarl(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32919,pUnit:GetClosestPlayer())
end

function Umberhowl_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Umberhowl_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21255, 1, "Umberhowl_OnEnterCombat")
RegisterUnitEvent(21255, 2, "Umberhowl_OnLeaveCombat")
RegisterUnitEvent(21255, 4, "Umberhowl_OnDied")