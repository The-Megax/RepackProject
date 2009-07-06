--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SonofCenarius_OnCombat(Unit, Event)
Unit:RegisterEvent("SonofCenarius_SummonTreantAlly", 4000, 1)
end

function SonofCenarius_SummonTreantAlly(pUnit, Event) 
pUnit:CastSpell(7993) 
end

function SonofCenarius_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SonofCenarius_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SonofCenarius_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4057, 1, "SonofCenarius_OnCombat")
RegisterUnitEvent(4057, 2, "SonofCenarius_OnLeaveCombat")
RegisterUnitEvent(4057, 3, "SonofCenarius_OnKilledTarget")
RegisterUnitEvent(4057, 4, "SonofCenarius_OnDied")