--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Adal_OnCombat(Unit, Event)
Unit:RegisterEvent("Adal_Ultimate", 1000, 1)
end

function Adal_Ultimate(pUnit, Event) 
pUnit:CastSpell(35076) 
end

function Adal_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Adal_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Adal_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18481, 1, "Adal_OnCombat")
RegisterUnitEvent(18481, 2, "Adal_OnLeaveCombat")
RegisterUnitEvent(18481, 3, "Adal_OnKilledTarget")
RegisterUnitEvent(18481, 4, "Adal_OnDied")