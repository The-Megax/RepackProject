--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Nesaad_OnCombat(Unit, Event)
Unit:RegisterEvent("Nesaad_Flux", 7000, 0)
end

function Nesaad_Flux(pUnit, Event) 
pUnit:CastSpell(35924) 
end

function Nesaad_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Nesaad_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Nesaad_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19641, 1, "Nesaad_OnCombat")
RegisterUnitEvent(19641, 2, "Nesaad_OnLeaveCombat")
RegisterUnitEvent(19641, 3, "Nesaad_OnKilledTarget")
RegisterUnitEvent(19641, 4, "Nesaad_OnDied")