--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Centurion_OnCombat(Unit, Event)
Unit:RegisterEvent("Centurion_Enrage", 25000, 1)
Unit:RegisterEvent("Centurion_Breaker", 10000, 0)
end

function Centurion_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Centurion_Breaker(pUnit, Event) 
pUnit:CastSpell(35871) 
end

function Centurion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Centurion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Centurion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20140, 1, "Centurion_OnCombat")
RegisterUnitEvent(20140, 2, "Centurion_OnLeaveCombat")
RegisterUnitEvent(20140, 3, "Centurion_OnKilledTarget")
RegisterUnitEvent(20140, 4, "Centurion_OnDied")