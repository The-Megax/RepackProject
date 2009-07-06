--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AmbershardDestroyer_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbershardDestroyer_Boulder", 8000, 0)
Unit:RegisterEvent("AmbershardDestroyer_EarthShock", 11000, 0)
end

function AmbershardDestroyer_Boulder(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19701, pUnit:GetMainTank()) 
end

function AmbershardDestroyer_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13728, pUnit:GetMainTank()) 
end

function AmbershardDestroyer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbershardDestroyer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbershardDestroyer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11782, 1, "AmbershardDestroyer_OnCombat")
RegisterUnitEvent(11782, 2, "AmbershardDestroyer_OnLeaveCombat")
RegisterUnitEvent(11782, 3, "AmbershardDestroyer_OnKilledTarget")
RegisterUnitEvent(11782, 4, "AmbershardDestroyer_OnDied")