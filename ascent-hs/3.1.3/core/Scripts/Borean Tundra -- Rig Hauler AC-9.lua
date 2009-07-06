--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RigHaulerAC9_OnCombat(Unit, Event)
Unit:RegisterEvent("RigHaulerAC9_CrowdPummel", 10000, 0)
end

function RigHaulerAC9_CrowdPummel(pUnit, Event) 
pUnit:CastSpell(10887) 
end

function RigHaulerAC9_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RigHaulerAC9_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RigHaulerAC9_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25766, 1, "RigHaulerAC9_OnCombat")
RegisterUnitEvent(25766, 2, "RigHaulerAC9_OnLeaveCombat")
RegisterUnitEvent(25766, 3, "RigHaulerAC9_OnKilledTarget")
RegisterUnitEvent(25766, 4, "RigHaulerAC9_OnDied")