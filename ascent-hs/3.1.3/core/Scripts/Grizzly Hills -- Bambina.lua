--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Bambina_OnCombat(Unit, Event)
Unit:RegisterEvent("Bambina_BambinasVengeance", 4000, 1)
end

function Bambina_BambinasVengeance(pUnit, Event) 
pUnit:CastSpell(48869) 
end

function Bambina_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bambina_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bambina_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27461, 1, "Bambina_OnCombat")
RegisterUnitEvent(27461, 2, "Bambina_OnLeaveCombat")
RegisterUnitEvent(27461, 3, "Bambina_OnKilledTarget")
RegisterUnitEvent(27461, 4, "Bambina_OnDied")