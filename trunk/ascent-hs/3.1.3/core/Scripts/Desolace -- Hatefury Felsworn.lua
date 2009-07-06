--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HatefuryFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryFelsworn_Enrage", 10000, 1)
end

function HatefuryFelsworn_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4672, 1, "HatefuryFelsworn_OnCombat")
RegisterUnitEvent(4672, 2, "HatefuryFelsworn_OnLeaveCombat")
RegisterUnitEvent(4672, 3, "HatefuryFelsworn_OnKilledTarget")
RegisterUnitEvent(4672, 4, "HatefuryFelsworn_OnDied")