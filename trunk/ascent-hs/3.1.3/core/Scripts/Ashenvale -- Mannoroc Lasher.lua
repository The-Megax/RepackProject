--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MannorocLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("MannorocLasher_ShadowBolt", 8000, 0)
end

function MannorocLasher_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function MannorocLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MannorocLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MannorocLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11697, 1, "MannorocLasher_OnCombat")
RegisterUnitEvent(11697, 2, "MannorocLasher_OnLeaveCombat")
RegisterUnitEvent(11697, 3, "MannorocLasher_OnKilledTarget")
RegisterUnitEvent(11697, 4, "MannorocLasher_OnDied")