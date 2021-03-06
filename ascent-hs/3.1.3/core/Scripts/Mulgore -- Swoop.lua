--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Swoop_OnCombat(Unit, Event)
Unit:RegisterEvent("Swoop_Swoop", 6000, 0)
end

function Swoop_Swoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function Swoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Swoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Swoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2970, 1, "Swoop_OnCombat")
RegisterUnitEvent(2970, 2, "Swoop_OnLeaveCombat")
RegisterUnitEvent(2970, 3, "Swoop_OnKilledTarget")
RegisterUnitEvent(2970, 4, "Swoop_OnDied")