--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AmbassadorBloodrage_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbassadorBloodrage_Shadowbolt", 8000, 0)
end

function AmbassadorBloodrage_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AmbassadorBloodrage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbassadorBloodrage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbassadorBloodrage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7895, 1, "AmbassadorBloodrage_OnCombat")
RegisterUnitEvent(7895, 2, "AmbassadorBloodrage_OnLeaveCombat")
RegisterUnitEvent(7895, 3, "AmbassadorBloodrage_OnKilledTarget")
RegisterUnitEvent(7895, 4, "AmbassadorBloodrage_OnDied")