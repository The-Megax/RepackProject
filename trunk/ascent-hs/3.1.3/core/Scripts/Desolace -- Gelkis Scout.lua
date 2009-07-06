--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GelkisScout_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisScout_Shoot", 6000, 0)
end

function GelkisScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GelkisScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4647, 1, "GelkisScout_OnCombat")
RegisterUnitEvent(4647, 2, "GelkisScout_OnLeaveCombat")
RegisterUnitEvent(4647, 3, "GelkisScout_OnKilledTarget")
RegisterUnitEvent(4647, 4, "GelkisScout_OnDied")