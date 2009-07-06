--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CryptCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("CryptCrawler_CryptScarabs", 6000, 1)
end

function CryptCrawler_CryptScarabs(pUnit, Event) 
pUnit:CastSpell(31600) 
end

function CryptCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CryptCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CryptCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25227, 1, "CryptCrawler_OnCombat")
RegisterUnitEvent(25227, 2, "CryptCrawler_OnLeaveCombat")
RegisterUnitEvent(25227, 3, "CryptCrawler_OnKilledTarget")
RegisterUnitEvent(25227, 4, "CryptCrawler_OnDied")