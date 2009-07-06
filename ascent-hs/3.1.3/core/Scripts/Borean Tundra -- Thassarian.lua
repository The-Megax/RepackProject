--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Thassarian_OnCombat(Unit, Event)
Unit:RegisterEvent("Thassarian_EmpoweredBloodPresence", 1000, 1)
end

function Thassarian_EmpoweredBloodPresence(pUnit, Event) 
pUnit:CastSpell(50995) 
end

function Thassarian_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Thassarian_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Thassarian_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26170, 1, "Thassarian_OnCombat")
RegisterUnitEvent(26170, 2, "Thassarian_OnLeaveCombat")
RegisterUnitEvent(26170, 3, "Thassarian_OnKilledTarget")
RegisterUnitEvent(26170, 4, "Thassarian_OnDied")