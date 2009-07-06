--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function EncrustedSurfCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("EncrustedSurfCrawler_QuickSidestep", 8000, 0)
end

function EncrustedSurfCrawler_QuickSidestep(pUnit, Event) 
pUnit:CastSpell(5426) 
end

function EncrustedSurfCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EncrustedSurfCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EncrustedSurfCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3108, 1, "EncrustedSurfCrawler_OnCombat")
RegisterUnitEvent(3108, 2, "EncrustedSurfCrawler_OnLeaveCombat")
RegisterUnitEvent(3108, 3, "EncrustedSurfCrawler_OnKilledTarget")
RegisterUnitEvent(3108, 4, "EncrustedSurfCrawler_OnDied")