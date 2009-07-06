--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SilithidSwarmer_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidSwarmer_SilithidSwarm", 3000, 1)
end

function SilithidSwarmer_SilithidSwarm(pUnit, Event) 
pUnit:CastSpell(6589) 
end

function SilithidSwarmer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidSwarmer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidSwarmer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3252, 1, "SilithidSwarmer_OnCombat")
RegisterUnitEvent(3252, 2, "SilithidSwarmer_OnLeaveCombat")
RegisterUnitEvent(3252, 3, "SilithidSwarmer_OnKilledTarget")
RegisterUnitEvent(3252, 4, "SilithidSwarmer_OnDied")