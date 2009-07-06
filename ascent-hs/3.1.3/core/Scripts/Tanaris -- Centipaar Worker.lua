--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CentipaarWorker_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarWorker_Thrash", 6000, 0)
end

function CentipaarWorker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarWorker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarWorker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5458, 1, "CentipaarWorker_OnCombat")
RegisterUnitEvent(5458, 2, "CentipaarWorker_OnLeaveCombat")
RegisterUnitEvent(5458, 3, "CentipaarWorker_OnKilledTarget")
RegisterUnitEvent(5458, 4, "CentipaarWorker_OnDied")