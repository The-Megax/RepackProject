--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function TheRake_OnCombat(Unit, Event)
Unit:RegisterEvent("TheRake_MuscleTear", 8000, 0)
end

function TheRake_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function TheRake_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheRake_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheRake_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5807, 1, "TheRake_OnCombat")
RegisterUnitEvent(5807, 2, "TheRake_OnLeaveCombat")
RegisterUnitEvent(5807, 3, "TheRake_OnKilledTarget")
RegisterUnitEvent(5807, 4, "TheRake_OnDied")