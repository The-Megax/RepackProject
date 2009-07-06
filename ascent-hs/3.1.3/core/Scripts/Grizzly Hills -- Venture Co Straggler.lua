--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function VentureCoStraggler_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoStraggler_Chop", 5000, 0)
end

function VentureCoStraggler_Chop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43410, pUnit:GetMainTank()) 
end

function VentureCoStraggler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoStraggler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoStraggler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27570, 1, "VentureCoStraggler_OnCombat")
RegisterUnitEvent(27570, 2, "VentureCoStraggler_OnLeaveCombat")
RegisterUnitEvent(27570, 3, "VentureCoStraggler_OnKilledTarget")
RegisterUnitEvent(27570, 4, "VentureCoStraggler_OnDied")