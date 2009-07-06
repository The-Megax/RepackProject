--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function EnragedReefCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("EnragedReefCrawler_Enrage", 10000, 1)
end

function EnragedReefCrawler_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function EnragedReefCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnragedReefCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnragedReefCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12347, 1, "EnragedReefCrawler_OnCombat")
RegisterUnitEvent(12347, 2, "EnragedReefCrawler_OnLeaveCombat")
RegisterUnitEvent(12347, 3, "EnragedReefCrawler_OnKilledTarget")
RegisterUnitEvent(12347, 4, "EnragedReefCrawler_OnDied")