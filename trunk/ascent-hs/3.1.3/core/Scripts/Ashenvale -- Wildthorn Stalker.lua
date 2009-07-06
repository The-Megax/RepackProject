--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WildthornStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("WildthornStalker_Web", 10000, 0)
end

function WildthornStalker_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12023, pUnit:GetMainTank()) 
end

function WildthornStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildthornStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildthornStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3819, 1, "WildthornStalker_OnCombat")
RegisterUnitEvent(3819, 2, "WildthornStalker_OnLeaveCombat")
RegisterUnitEvent(3819, 3, "WildthornStalker_OnKilledTarget")
RegisterUnitEvent(3819, 4, "WildthornStalker_OnDied")