--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function UnlivingSwine_OnCombat(Unit, Event)
Unit:RegisterEvent("UnlivingSwine_SwineFlu", 8000, 0)
end

function UnlivingSwine_SwineFlu(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50303, pUnit:GetMainTank()) 
end

function UnlivingSwine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnlivingSwine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnlivingSwine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25600, 1, "UnlivingSwine_OnCombat")
RegisterUnitEvent(25600, 2, "UnlivingSwine_OnLeaveCombat")
RegisterUnitEvent(25600, 3, "UnlivingSwine_OnKilledTarget")
RegisterUnitEvent(25600, 4, "UnlivingSwine_OnDied")