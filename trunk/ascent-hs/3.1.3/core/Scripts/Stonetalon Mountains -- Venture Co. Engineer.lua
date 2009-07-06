--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VentureCoEngineer_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoEngineer_ThrowDynamite", 8000, 0)
end

function VentureCoEngineer_ThrowDynamite(pUnit, Event) 
pUnit:CastSpell(7978) 
end

function VentureCoEngineer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoEngineer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoEngineer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3992, 1, "VentureCoEngineer_OnCombat")
RegisterUnitEvent(3992, 2, "VentureCoEngineer_OnLeaveCombat")
RegisterUnitEvent(3992, 3, "VentureCoEngineer_OnKilledTarget")
RegisterUnitEvent(3992, 4, "VentureCoEngineer_OnDied")