--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LandingCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("LandingCrawler_ClawGrasp", 10000, 0)
end

function LandingCrawler_ClawGrasp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49978, pUnit:GetMainTank()) 
end

function LandingCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LandingCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LandingCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25481, 1, "LandingCrawler_OnCombat")
RegisterUnitEvent(25481, 2, "LandingCrawler_OnLeaveCombat")
RegisterUnitEvent(25481, 3, "LandingCrawler_OnKilledTarget")
RegisterUnitEvent(25481, 4, "LandingCrawler_OnDied")