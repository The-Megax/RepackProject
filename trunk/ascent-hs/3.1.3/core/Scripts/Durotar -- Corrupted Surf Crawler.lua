--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CorruptedSurfCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedSurfCrawler_DecayedStrength", 10000, 0)
end

function CorruptedSurfCrawler_DecayedStrength(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6951, pUnit:GetMainTank()) 
end

function CorruptedSurfCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedSurfCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedSurfCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3228, 1, "CorruptedSurfCrawler_OnCombat")
RegisterUnitEvent(3228, 2, "CorruptedSurfCrawler_OnLeaveCombat")
RegisterUnitEvent(3228, 3, "CorruptedSurfCrawler_OnKilledTarget")
RegisterUnitEvent(3228, 4, "CorruptedSurfCrawler_OnDied")