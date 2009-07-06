--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function VyraltheVile_OnCombat(Unit, Event)
Unit:RegisterEvent("VyraltheVile_Fireball", 8000, 0)
Unit:RegisterEvent("VyraltheVile_ShadowShock", 6000, 0)
end

function VyraltheVile_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function VyraltheVile_ShadowShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17439, pUnit:GetMainTank()) 
end

function VyraltheVile_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VyraltheVile_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VyraltheVile_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15202, 1, "VyraltheVile_OnCombat")
RegisterUnitEvent(15202, 2, "VyraltheVile_OnLeaveCombat")
RegisterUnitEvent(15202, 3, "VyraltheVile_OnKilledTarget")
RegisterUnitEvent(15202, 4, "VyraltheVile_OnDied")