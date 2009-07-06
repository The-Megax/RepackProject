--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GhostpawHowler_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostpawHowler_BloodHowl", 1000, 0)
end

function GhostpawHowler_BloodHowl(pUnit, Event) 
pUnit:CastSpell(3264) 
end

function GhostpawHowler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostpawHowler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostpawHowler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3824, 1, "GhostpawHowler_OnCombat")
RegisterUnitEvent(3824, 2, "GhostpawHowler_OnLeaveCombat")
RegisterUnitEvent(3824, 3, "GhostpawHowler_OnKilledTarget")
RegisterUnitEvent(3824, 4, "GhostpawHowler_OnDied")