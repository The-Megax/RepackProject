--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BroGaz_OnEnterCombat(pUnit,Event)
    pUnit:FullCastSpell(12468)
	pUnit:RegisterEvent("BroGaz_Heal", 5000, 0)
end

function BroGaz_Heal(pUnit,Event)
    if Unit:GetHealthPct() < 30 then
	pUnit:FullCastSpell(15586)
    end
end

function BroGaz_OnLeaveCombat(pUnit)
    pUnit:RemoveEvents()
end

function BroGaz_Death(pUnit)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(18684, 1, "BroGaz_OnEnterCombat")
RegisterUnitEvent(18684, 2, "BroGaz_OnLeaveCombat")
RegisterUnitEvent(18684, 3, "BroGaz_Death")
