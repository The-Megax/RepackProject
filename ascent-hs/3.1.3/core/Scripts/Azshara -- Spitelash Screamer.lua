--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SpitelashScreamer_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashScreamer_DeafeningScreech", 12000, 0)
end

function SpitelashScreamer_DeafeningScreech(pUnit, Event) 
pUnit:CastSpell(3589) 
end

function SpitelashScreamer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashScreamer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashScreamer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6193, 1, "SpitelashScreamer_OnCombat")
RegisterUnitEvent(6193, 2, "SpitelashScreamer_OnLeaveCombat")
RegisterUnitEvent(6193, 3, "SpitelashScreamer_OnKilledTarget")
RegisterUnitEvent(6193, 4, "SpitelashScreamer_OnDied")