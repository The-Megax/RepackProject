--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ChillmereCoastrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("ChillmereCoastrunner_InstantPoison", 8000, 0)
Unit:RegisterEvent("ChillmereCoastrunner_Rupture", 10000, 0)
end

function ChillmereCoastrunner_InstantPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(28428, pUnit:GetMainTank()) 
end

function ChillmereCoastrunner_Rupture(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14874, pUnit:GetMainTank()) 
end

function ChillmereCoastrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChillmereCoastrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChillmereCoastrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24459, 1, "ChillmereCoastrunner_OnCombat")
RegisterUnitEvent(24459, 2, "ChillmereCoastrunner_OnLeaveCombat")
RegisterUnitEvent(24459, 3, "ChillmereCoastrunner_OnKilledTarget")
RegisterUnitEvent(24459, 4, "ChillmereCoastrunner_OnDied")