--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VentureCoMachineSmith_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoMachineSmith_CompactHarvestReaper", 6000, 1)
end

function VentureCoMachineSmith_CompactHarvestReaper(pUnit, Event) 
pUnit:CastSpell(7979) 
end

function VentureCoMachineSmith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoMachineSmith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoMachineSmith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3993, 1, "VentureCoMachineSmith_OnCombat")
RegisterUnitEvent(3993, 2, "VentureCoMachineSmith_OnLeaveCombat")
RegisterUnitEvent(3993, 3, "VentureCoMachineSmith_OnKilledTarget")
RegisterUnitEvent(3993, 4, "VentureCoMachineSmith_OnDied")