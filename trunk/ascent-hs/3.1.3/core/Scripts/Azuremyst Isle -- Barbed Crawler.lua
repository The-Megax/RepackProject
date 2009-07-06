--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BarbedCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("BarbedCrawler_Thorns", 2000, 2)
end

function BarbedCrawler_Thorns(pUnit, Event) 
pUnit:CastSpell(31271) 
end

function BarbedCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BarbedCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BarbedCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17217, 1, "BarbedCrawler_OnCombat")
RegisterUnitEvent(17217, 2, "BarbedCrawler_OnLeaveCombat")
RegisterUnitEvent(17217, 3, "BarbedCrawler_OnKilledTarget")
RegisterUnitEvent(17217, 4, "BarbedCrawler_OnDied")