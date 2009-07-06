--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TimberwebRecluse_OnCombat(Unit, Event)
Unit:RegisterEvent("TimberwebRecluse_Web", 10000, 0)
end

function TimberwebRecluse_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetMainTank()) 
end

function TimberwebRecluse_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimberwebRecluse_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimberwebRecluse_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8762, 1, "TimberwebRecluse_OnCombat")
RegisterUnitEvent(8762, 2, "TimberwebRecluse_OnLeaveCombat")
RegisterUnitEvent(8762, 3, "TimberwebRecluse_OnKilledTarget")
RegisterUnitEvent(8762, 4, "TimberwebRecluse_OnDied")