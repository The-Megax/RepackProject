--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

-- Bloodmaul Brewmaster http://www.wowhead.com/?npc=19957
-- this is some Drunk NPC :)
function BMBrewmaster_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("BMWarlock_Drink", 2000, 1)
end

function BMBrewmaster_Drink(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37591,pUnit:GetMainTank())
end

function BMBrewmaster_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BMBrewmaster_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19957, 1, "BMBrewmaster_OnEnterCombat")
RegisterUnitEvent (19957, 2, "BMBrewmaster_OnLeaveCombat")
RegisterUnitEvent (19957, 4, "BMBrewmaster_OnDied")

-- Bloodmaul Brute http://www.wowhead.com/?npc=19991

function BMBrute_OnEnterCombat(pUnit,Event)
    pUnit:FullCastSpell(34932)
	pUnit:RegisterEvent("BMBrute_Clave", 4500, 8) -- 100% correct info :)
	pUnit:RegisterEvent("BMBrute_Kick", 9000, 2)
	pUnit:RegisterEvent("BMBrute_Enrage", 1000, 1)
end

function BMBrute_Clave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetMainTank())
end

function BMBrute_Enrage(pUnit,Event)
     if pUnit:GetHealthPct() > 15 then
    pUnit:FullCastSpell(37786)
end
end

function BMBrute_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BMBrute_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19991, 1, "BMBrute_OnEnterCombat")
RegisterUnitEvent (19991, 2, "BMBrute_OnLeaveCombat")
RegisterUnitEvent (19991, 4, "BMBrute_OnDied")
