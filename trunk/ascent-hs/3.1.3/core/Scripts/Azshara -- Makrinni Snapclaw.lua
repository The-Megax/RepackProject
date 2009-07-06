--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MakrinniSnapclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("MakrinniSnapclaw_TendonRip", 10000, 0)
end

function MakrinniSnapclaw_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function MakrinniSnapclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MakrinniSnapclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MakrinniSnapclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6372, 1, "MakrinniSnapclaw_OnCombat")
RegisterUnitEvent(6372, 2, "MakrinniSnapclaw_OnLeaveCombat")
RegisterUnitEvent(6372, 3, "MakrinniSnapclaw_OnKilledTarget")
RegisterUnitEvent(6372, 4, "MakrinniSnapclaw_OnDied")