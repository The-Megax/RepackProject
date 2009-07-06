--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RagingBoiler_OnCombat(Unit, Event)
Unit:RegisterEvent("RagingBoiler_BoilingBlood", 8000, 0)
end

function RagingBoiler_BoilingBlood(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50207, pUnit:GetMainTank()) 
end

function RagingBoiler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagingBoiler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagingBoiler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25417, 1, "RagingBoiler_OnCombat")
RegisterUnitEvent(25417, 2, "RagingBoiler_OnLeaveCombat")
RegisterUnitEvent(25417, 3, "RagingBoiler_OnKilledTarget")
RegisterUnitEvent(25417, 4, "RagingBoiler_OnDied")