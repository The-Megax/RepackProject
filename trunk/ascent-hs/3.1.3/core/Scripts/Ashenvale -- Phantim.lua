--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Phantim_OnCombat(Unit, Event)
Unit:RegisterEvent("Phantim_CorrosiveAcidBreath", 8000, 0)
end

function Phantim_CorrosiveAcidBreath(pUnit, Event) 
pUnit:CastSpell(20667) 
end

function Phantim_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Phantim_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Phantim_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5314, 1, "Phantim_OnCombat")
RegisterUnitEvent(5314, 2, "Phantim_OnLeaveCombat")
RegisterUnitEvent(5314, 3, "Phantim_OnKilledTarget")
RegisterUnitEvent(5314, 4, "Phantim_OnDied")