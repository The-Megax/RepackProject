--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Tazan_OnCombat(Unit, Event)
Unit:RegisterEvent("Tazan_Backhand", 8000, 0)
end

function Tazan_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function Tazan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tazan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tazan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6494, 1, "Tazan_OnCombat")
RegisterUnitEvent(6494, 2, "Tazan_OnLeaveCombat")
RegisterUnitEvent(6494, 3, "Tazan_OnKilledTarget")
RegisterUnitEvent(6494, 4, "Tazan_OnDied")