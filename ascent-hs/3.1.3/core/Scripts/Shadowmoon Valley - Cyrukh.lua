--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Cyrukh_OnEnterCombat(pUnit,Event)
	pUnit:GetMainTank()
	pUnit:GetAddTank()
	pUnit:RegisterEvent("Cyrukh_Final", 0001, 0)
	pUnit:RegisterEvent("Cyrukh_Trample", 10000, 0)
	pUnit:RegisterEvent("Cyrukh_KnockAway", 22000, 0)
end

function Cyrukh_Final(pUnit,Event)
 if pUnit:GetHealthPct() == 10 then
	pUnit:RegisterEvent("Cyrukh_FinalSpell",  20000, 0)
end
end

function Cyrukh_FinalSpell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39429,pUnit:GetMainTank())
end

function Cyrukh_Trample(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39425,pUnit:GetMainTank())
end

function Cyrukh_KnockAway(pUnit,Event)
	pUnit:FullCastSpellOnTarget(18945,pUnit:GetMainTank())
end

function Cyrukh_Death(pUnit,Event)
	pUnit:RemoveEvents()
end

function Cyrukh_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21181, 1, "Cyrukh_OnEnterCombat")
RegisterUnitEvent(21181, 4, "Cyrukh_Death")
RegisterUnitEvent(21181, 2, "Cyrukh_OnLeaveCombat")