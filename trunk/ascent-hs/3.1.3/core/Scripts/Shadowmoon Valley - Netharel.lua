--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Netharel_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Netharel_DebilitatingStrike", 15000, 0)
	pUnit:RegisterEvent("Netharel_Evasion", 30000, 0)
	pUnit:RegisterEvent("Netharel_ManaBurn", 7000, 0)
	pUnit:RegisterEvent("Netharel_Metamorphosis", 1000, 1)
end

function Netharel_DebilitatingStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39135,pUnit:GetClosestPlayer())
end

function Netharel_Evasion(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37683,pUnit:GetClosestPlayer())
end

function Netharel_ManaBurn(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39262,pUnit:GetClosestPlayer())
end

function Netharel_Metamorphosis(pUnit,Event)
 if pUnit:GetHealthPct() == 10 then
	pUnit:CastSpell(36298)
end
end

function Netharel_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Netharel_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21164, 1, "Netharel_OnEnterCombat")
RegisterUnitEvent(21164, 2, "Netharel_OnLeaveCombat")
RegisterUnitEvent(21164, 4, "Netharel_OnDied")