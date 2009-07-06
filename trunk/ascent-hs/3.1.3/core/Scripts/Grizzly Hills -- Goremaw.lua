--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Goremaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Goremaw_CarnivorousBite", 10000, 0)
Unit:RegisterEvent("Goremaw_InfectedWorgenBite", 4000, 3)
end

function Goremaw_CarnivorousBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50729, pUnit:GetMainTank()) 
end

function Goremaw_InfectedWorgenBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53174, pUnit:GetMainTank()) 
end

function Goremaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Goremaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Goremaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27578, 1, "Goremaw_OnCombat")
RegisterUnitEvent(27578, 2, "Goremaw_OnLeaveCombat")
RegisterUnitEvent(27578, 3, "Goremaw_OnKilledTarget")
RegisterUnitEvent(27578, 4, "Goremaw_OnDied")