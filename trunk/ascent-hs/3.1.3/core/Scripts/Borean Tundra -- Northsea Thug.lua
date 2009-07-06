--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NorthseaThug_OnCombat(Unit, Event)
Unit:RegisterEvent("NorthseaThug_Crazed", 5000, 1)
end

function NorthseaThug_Crazed(pUnit, Event) 
pUnit:CastSpell(5915) 
end

function NorthseaThug_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NorthseaThug_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NorthseaThug_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25843, 1, "NorthseaThug_OnCombat")
RegisterUnitEvent(25843, 2, "NorthseaThug_OnLeaveCombat")
RegisterUnitEvent(25843, 3, "NorthseaThug_OnKilledTarget")
RegisterUnitEvent(25843, 4, "NorthseaThug_OnDied")