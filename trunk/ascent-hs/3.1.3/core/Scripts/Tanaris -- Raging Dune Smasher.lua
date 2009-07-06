--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RagingDuneSmasher_OnCombat(Unit, Event)
Unit:RegisterEvent("RagingDuneSmasher_Enrage", 120000, 0)
end

function RagingDuneSmasher_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function RagingDuneSmasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagingDuneSmasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagingDuneSmasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5470, 1, "RagingDuneSmasher_OnCombat")
RegisterUnitEvent(5470, 2, "RagingDuneSmasher_OnLeaveCombat")
RegisterUnitEvent(5470, 3, "RagingDuneSmasher_OnKilledTarget")
RegisterUnitEvent(5470, 4, "RagingDuneSmasher_OnDied")