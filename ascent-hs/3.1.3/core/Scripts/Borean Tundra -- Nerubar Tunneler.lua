--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NerubarTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarTunneler_RockShield", 8000, 0)
end

function NerubarTunneler_RockShield(pUnit, Event) 
pUnit:CastSpell(50364) 
end

function NerubarTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25622, 1, "NerubarTunneler_OnCombat")
RegisterUnitEvent(25622, 2, "NerubarTunneler_OnLeaveCombat")
RegisterUnitEvent(25622, 3, "NerubarTunneler_OnKilledTarget")
RegisterUnitEvent(25622, 4, "NerubarTunneler_OnDied")