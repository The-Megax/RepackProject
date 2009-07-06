--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WoolyRhinoBull_OnCombat(Unit, Event)
Unit:RegisterEvent("WoolyRhinoBull_ThickHide", 4000, 1)
end

function WoolyRhinoBull_ThickHide(pUnit, Event) 
pUnit:CastSpell(50502) 
end

function WoolyRhinoBull_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoolyRhinoBull_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoolyRhinoBull_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25489, 1, "WoolyRhinoBull_OnCombat")
RegisterUnitEvent(25489, 2, "WoolyRhinoBull_OnLeaveCombat")
RegisterUnitEvent(25489, 3, "WoolyRhinoBull_OnKilledTarget")
RegisterUnitEvent(25489, 4, "WoolyRhinoBull_OnDied")