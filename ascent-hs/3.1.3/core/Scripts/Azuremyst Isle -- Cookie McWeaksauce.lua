--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CookieMcWeaksauce_OnCombat(Unit, Event)
Unit:RegisterEvent("CookieMcWeaksauce_Shoot", 6000, 0)
end

function CookieMcWeaksauce_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30221, pUnit:GetRandomPlayer(0)) 
end

function CookieMcWeaksauce_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CookieMcWeaksauce_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CookieMcWeaksauce_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17246, 1, "CookieMcWeaksauce_OnCombat")
RegisterUnitEvent(17246, 2, "CookieMcWeaksauce_OnLeaveCombat")
RegisterUnitEvent(17246, 3, "CookieMcWeaksauce_OnKilledTarget")
RegisterUnitEvent(17246, 4, "CookieMcWeaksauce_OnDied")