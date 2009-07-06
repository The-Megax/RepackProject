--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GalakOutrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakOutrunner_Shot", 6000, 0)
end

function GalakOutrunner_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GalakOutrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakOutrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakOutrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2968, 1, "GalakOutrunner_OnCombat")
RegisterUnitEvent(2968, 2, "GalakOutrunner_OnLeaveCombat")
RegisterUnitEvent(2968, 3, "GalakOutrunner_OnKilledTarget")
RegisterUnitEvent(2968, 4, "GalakOutrunner_OnDied")