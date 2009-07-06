--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EmeraldLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldLasher_DreamLash", 7000, 0)
end

function EmeraldLasher_DreamLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51901, pUnit:GetMainTank()) 
end

function EmeraldLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27254, 1, "EmeraldLasher_OnCombat")
RegisterUnitEvent(27254, 2, "EmeraldLasher_OnLeaveCombat")
RegisterUnitEvent(27254, 3, "EmeraldLasher_OnKilledTarget")
RegisterUnitEvent(27254, 4, "EmeraldLasher_OnDied")