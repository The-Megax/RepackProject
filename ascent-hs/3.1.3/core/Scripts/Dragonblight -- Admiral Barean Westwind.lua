--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AdmiralBareanWestwind_OnCombat(Unit, Event)
Unit:RegisterEvent("AdmiralBareanWestwind_ProtectionSphere", 15000, 0)
end

function AdmiralBareanWestwind_ProtectionSphere(pUnit, Event) 
pUnit:CastSpell(50161) 
end

function AdmiralBareanWestwind_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AdmiralBareanWestwind_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AdmiralBareanWestwind_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27951, 1, "AdmiralBareanWestwind_OnCombat")
RegisterUnitEvent(27951, 2, "AdmiralBareanWestwind_OnLeaveCombat")
RegisterUnitEvent(27951, 3, "AdmiralBareanWestwind_OnKilledTarget")
RegisterUnitEvent(27951, 4, "AdmiralBareanWestwind_OnDied")