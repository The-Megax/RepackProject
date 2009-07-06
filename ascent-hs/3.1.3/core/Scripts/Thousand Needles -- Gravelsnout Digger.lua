--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GravelsnoutDigger_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutDigger_SkullCrack", 8000, 0)
end

function GravelsnoutDigger_SkullCrack(pUnit, Event) 
pUnit:CastSpell(3551) 
end

function GravelsnoutDigger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutDigger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutDigger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4113, 1, "GravelsnoutDigger_OnCombat")
RegisterUnitEvent(4113, 2, "GravelsnoutDigger_OnLeaveCombat")
RegisterUnitEvent(4113, 3, "GravelsnoutDigger_OnKilledTarget")
RegisterUnitEvent(4113, 4, "GravelsnoutDigger_OnDied")