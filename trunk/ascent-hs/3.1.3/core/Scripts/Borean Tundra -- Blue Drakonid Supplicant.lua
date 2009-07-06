--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BlueDrakonidSupplicant_OnCombat(Unit, Event)
Unit:RegisterEvent("BlueDrakonidSupplicant_PowerSap", 8000, 0)
end

function BlueDrakonidSupplicant_PowerSap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50534, pUnit:GetMainTank()) 
end

function BlueDrakonidSupplicant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlueDrakonidSupplicant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlueDrakonidSupplicant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25713, 1, "BlueDrakonidSupplicant_OnCombat")
RegisterUnitEvent(25713, 2, "BlueDrakonidSupplicant_OnLeaveCombat")
RegisterUnitEvent(25713, 3, "BlueDrakonidSupplicant_OnKilledTarget")
RegisterUnitEvent(25713, 4, "BlueDrakonidSupplicant_OnDied")