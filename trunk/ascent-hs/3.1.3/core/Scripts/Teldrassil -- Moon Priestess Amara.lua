--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MoonPriestessAmara_OnCombat(Unit, Event)
Unit:RegisterEvent("MoonPriestessAmara_Shoot", 6000, 0)
end

function MoonPriestessAmara_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18561, pUnit:GetMainTank()) 
end

function MoonPriestessAmara_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoonPriestessAmara_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoonPriestessAmara_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2151, 1, "MoonPriestessAmara_OnCombat")
RegisterUnitEvent(2151, 2, "MoonPriestessAmara_OnLeaveCombat")
RegisterUnitEvent(2151, 3, "MoonPriestessAmara_OnKilledTarget")
RegisterUnitEvent(2151, 4, "MoonPriestessAmara_OnDied")