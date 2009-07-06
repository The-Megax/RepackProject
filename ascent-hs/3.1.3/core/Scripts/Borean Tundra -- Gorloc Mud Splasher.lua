--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GorlocMudSplasher_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocMudSplasher_GorlocStomp", 6000, 0)
end

function GorlocMudSplasher_GorlocStomp(pUnit, Event) 
pUnit:CastSpell(50522) 
end

function GorlocMudSplasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocMudSplasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocMudSplasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25699, 1, "GorlocMudSplasher_OnCombat")
RegisterUnitEvent(25699, 2, "GorlocMudSplasher_OnLeaveCombat")
RegisterUnitEvent(25699, 3, "GorlocMudSplasher_OnKilledTarget")
RegisterUnitEvent(25699, 4, "GorlocMudSplasher_OnDied")