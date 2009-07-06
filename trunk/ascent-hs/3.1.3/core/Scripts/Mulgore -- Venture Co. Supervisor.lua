--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VentureCoSupervisor_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoSupervisor_BattleShout", 10000, 2)
end

function VentureCoSupervisor_BattleShout(pUnit, Event) 
pUnit:CastSpell(6673) 
end

function VentureCoSupervisor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoSupervisor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoSupervisor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2979, 1, "VentureCoSupervisor_OnCombat")
RegisterUnitEvent(2979, 2, "VentureCoSupervisor_OnLeaveCombat")
RegisterUnitEvent(2979, 3, "VentureCoSupervisor_OnKilledTarget")
RegisterUnitEvent(2979, 4, "VentureCoSupervisor_OnDied")