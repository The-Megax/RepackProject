--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WrathscaleSiren_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleSiren_Screech", 8000, 0)
end

function WrathscaleSiren_Screech(pUnit, Event) 
pUnit:CastSpell(31273) 
end

function WrathscaleSiren_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleSiren_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleSiren_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17195, 1, "WrathscaleSiren_OnCombat")
RegisterUnitEvent(17195, 2, "WrathscaleSiren_OnLeaveCombat")
RegisterUnitEvent(17195, 3, "WrathscaleSiren_OnKilledTarget")
RegisterUnitEvent(17195, 4, "WrathscaleSiren_OnDied")