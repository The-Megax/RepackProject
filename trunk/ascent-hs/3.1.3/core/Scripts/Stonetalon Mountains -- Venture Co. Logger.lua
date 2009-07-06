--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VentureCoLogger_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoLogger_Throw", 6000, 0)
end

function VentureCoLogger_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function VentureCoLogger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoLogger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoLogger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3989, 1, "VentureCoLogger_OnCombat")
RegisterUnitEvent(3989, 2, "VentureCoLogger_OnLeaveCombat")
RegisterUnitEvent(3989, 3, "VentureCoLogger_OnKilledTarget")
RegisterUnitEvent(3989, 4, "VentureCoLogger_OnDied")