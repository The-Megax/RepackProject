--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Priestess_OnCombat(Unit, Event)
Unit:RegisterEvent("Priestess_Rain", 9000, 0)
end

function Priestess_Rain(pUnit, Event) 
pUnit:CastSpell(34017) 
end

function Priestess_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Priestess_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Priestess_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18859, 1, "Priestess_OnCombat")
RegisterUnitEvent(18859, 2, "Priestess_OnLeaveCombat")
RegisterUnitEvent(18859, 3, "Priestess_OnKilledTarget")
RegisterUnitEvent(18859, 4, "Priestess_OnDied")