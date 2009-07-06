--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Bane_OnCombat(Unit, Event)
Unit:RegisterEvent("Bane_FoolsBane", 10000, 0)
end

function Bane_FoolsBane(pUnit, Event) 
pUnit:CastSpell(50332) 
end

function Bane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25655, 1, "Bane_OnCombat")
RegisterUnitEvent(25655, 2, "Bane_OnLeaveCombat")
RegisterUnitEvent(25655, 3, "Bane_OnKilledTarget")
RegisterUnitEvent(25655, 4, "Bane_OnDied")