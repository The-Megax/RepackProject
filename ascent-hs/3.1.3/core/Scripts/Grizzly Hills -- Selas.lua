--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Selas_OnCombat(Unit, Event)
Unit:RegisterEvent("Selas_AxeVolley", 6000, 0)
Unit:RegisterEvent("Selas_KillingRage", 5000, 0)
end

function Selas_AxeVolley(pUnit, Event) 
pUnit:CastSpell(53239) 
end

function Selas_KillingRage(pUnit, Event) 
pUnit:CastSpell(52071) 
end

function Selas_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Selas_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Selas_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27580, 1, "Selas_OnCombat")
RegisterUnitEvent(27580, 2, "Selas_OnLeaveCombat")
RegisterUnitEvent(27580, 3, "Selas_OnKilledTarget")
RegisterUnitEvent(27580, 4, "Selas_OnDied")