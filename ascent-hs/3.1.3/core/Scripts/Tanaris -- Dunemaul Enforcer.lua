--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DunemaulEnforcer_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulEnforcer_DemoralizingShout", 10000, 0)
end

function DunemaulEnforcer_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function DunemaulEnforcer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulEnforcer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulEnforcer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5472, 1, "DunemaulEnforcer_OnCombat")
RegisterUnitEvent(5472, 2, "DunemaulEnforcer_OnLeaveCombat")
RegisterUnitEvent(5472, 3, "DunemaulEnforcer_OnKilledTarget")
RegisterUnitEvent(5472, 4, "DunemaulEnforcer_OnDied")