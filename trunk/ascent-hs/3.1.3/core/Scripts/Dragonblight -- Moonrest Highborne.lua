--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MoonrestHighborne_OnCombat(Unit, Event)
Unit:RegisterEvent("MoonrestHighborne_ShadowWordDeath", 6000, 0)
end

function MoonrestHighborne_ShadowWordDeath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51818, pUnit:GetMainTank()) 
end

function MoonrestHighborne_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoonrestHighborne_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoonrestHighborne_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26455, 1, "MoonrestHighborne_OnCombat")
RegisterUnitEvent(26455, 2, "MoonrestHighborne_OnLeaveCombat")
RegisterUnitEvent(26455, 3, "MoonrestHighborne_OnKilledTarget")
RegisterUnitEvent(26455, 4, "MoonrestHighborne_OnDied")