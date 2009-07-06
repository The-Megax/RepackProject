--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DrysnapCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("DrysnapCrawler_FrostArmor", 4000, 1)
Unit:RegisterEvent("DrysnapCrawler_FrostShock", 9000, 0)
end

function DrysnapCrawler_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function DrysnapCrawler_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function DrysnapCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrysnapCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrysnapCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11562, 1, "DrysnapCrawler_OnCombat")
RegisterUnitEvent(11562, 2, "DrysnapCrawler_OnLeaveCombat")
RegisterUnitEvent(11562, 3, "DrysnapCrawler_OnKilledTarget")
RegisterUnitEvent(11562, 4, "DrysnapCrawler_OnDied")