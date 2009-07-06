--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HazzaliSwarmer_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliSwarmer_SilithidSwarm", 10000, 1)
end

function HazzaliSwarmer_SilithidSwarm(pUnit, Event) 
pUnit:CastSpell(6589) 
end

function HazzaliSwarmer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliSwarmer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliSwarmer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5451, 1, "HazzaliSwarmer_OnCombat")
RegisterUnitEvent(5451, 2, "HazzaliSwarmer_OnLeaveCombat")
RegisterUnitEvent(5451, 3, "HazzaliSwarmer_OnKilledTarget")
RegisterUnitEvent(5451, 4, "HazzaliSwarmer_OnDied")