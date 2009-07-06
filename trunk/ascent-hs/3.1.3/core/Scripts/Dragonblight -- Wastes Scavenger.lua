--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WastesScavenger_OnCombat(Unit, Event)
Unit:RegisterEvent("WastesScavenger_BoneToss", 5000, 0)
end

function WastesScavenger_BoneToss(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50403, pUnit:GetMainTank()) 
end

function WastesScavenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastesScavenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastesScavenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28005, 1, "WastesScavenger_OnCombat")
RegisterUnitEvent(28005, 2, "WastesScavenger_OnLeaveCombat")
RegisterUnitEvent(28005, 3, "WastesScavenger_OnKilledTarget")
RegisterUnitEvent(28005, 4, "WastesScavenger_OnDied")