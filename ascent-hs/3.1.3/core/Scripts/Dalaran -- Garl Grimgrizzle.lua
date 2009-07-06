--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GarlGrimgrizzle_OnCombat(Unit, Event)
Unit:RegisterEvent("GarlGrimgrizzle_ShootGun", 6000, 0)
end

function GarlGrimgrizzle_ShootGun(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61353, pUnit:GetMainTank()) 
end

function GarlGrimgrizzle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GarlGrimgrizzle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GarlGrimgrizzle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32710, 1, "GarlGrimgrizzle_OnCombat")
RegisterUnitEvent(32710, 2, "GarlGrimgrizzle_OnLeaveCombat")
RegisterUnitEvent(32710, 3, "GarlGrimgrizzle_OnKilledTarget")
RegisterUnitEvent(32710, 4, "GarlGrimgrizzle_OnDied")