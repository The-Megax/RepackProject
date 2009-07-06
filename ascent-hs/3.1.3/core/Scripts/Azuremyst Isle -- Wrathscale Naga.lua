--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WrathscaleNaga_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleNaga_Hamstring", 8000, 0)
end

function WrathscaleNaga_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function WrathscaleNaga_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleNaga_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleNaga_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17193, 1, "WrathscaleNaga_OnCombat")
RegisterUnitEvent(17193, 2, "WrathscaleNaga_OnLeaveCombat")
RegisterUnitEvent(17193, 3, "WrathscaleNaga_OnKilledTarget")
RegisterUnitEvent(17193, 4, "WrathscaleNaga_OnDied")