--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NexusWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("NexusWatcher_IntangiblePresence", 10000, 0)
Unit:RegisterEvent("NexusWatcher_Netherbreath", 7500, 0)
end

function NexusWatcher_IntangiblePresence(pUnit, Event) 
pUnit:CastSpell(36513) 
end

function NexusWatcher_Netherbreath(pUnit, Event) 
pUnit:CastSpell(36631) 
end

function NexusWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NexusWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NexusWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24770, 1, "NexusWatcher_OnCombat")
RegisterUnitEvent(24770, 2, "NexusWatcher_OnLeaveCombat")
RegisterUnitEvent(24770, 3, "NexusWatcher_OnKilledTarget")
RegisterUnitEvent(24770, 4, "NexusWatcher_OnDied")