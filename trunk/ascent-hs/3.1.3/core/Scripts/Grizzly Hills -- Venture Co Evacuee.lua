--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function VentureCoEvacuee_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoEvacuee_QuickFeet", 5000, 0)
end

function VentureCoEvacuee_QuickFeet(pUnit, Event) 
pUnit:CastSpell(50054) 
end

function VentureCoEvacuee_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoEvacuee_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoEvacuee_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27830, 1, "VentureCoEvacuee_OnCombat")
RegisterUnitEvent(27830, 2, "VentureCoEvacuee_OnLeaveCombat")
RegisterUnitEvent(27830, 3, "VentureCoEvacuee_OnKilledTarget")
RegisterUnitEvent(27830, 4, "VentureCoEvacuee_OnDied")