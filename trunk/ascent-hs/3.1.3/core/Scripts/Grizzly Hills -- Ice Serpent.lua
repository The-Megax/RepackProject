--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IceSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("IceSerpent_IceSlash", 7000, 0)
end

function IceSerpent_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function IceSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26446, 1, "IceSerpent_OnCombat")
RegisterUnitEvent(26446, 2, "IceSerpent_OnLeaveCombat")
RegisterUnitEvent(26446, 3, "IceSerpent_OnKilledTarget")
RegisterUnitEvent(26446, 4, "IceSerpent_OnDied")