--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SnowTrackerHaloke_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowTrackerHaloke_Shoot", 6000, 0)
end

function SnowTrackerHaloke_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SnowTrackerHaloke_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowTrackerHaloke_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowTrackerHaloke_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26768, 1, "SnowTrackerHaloke_OnCombat")
RegisterUnitEvent(26768, 2, "SnowTrackerHaloke_OnLeaveCombat")
RegisterUnitEvent(26768, 3, "SnowTrackerHaloke_OnKilledTarget")
RegisterUnitEvent(26768, 4, "SnowTrackerHaloke_OnDied")