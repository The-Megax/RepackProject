--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Duskstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("Duskstalker_TendonRip", 8000, 0)
end

function Duskstalker_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function Duskstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Duskstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Duskstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14430, 1, "Duskstalker_OnCombat")
RegisterUnitEvent(14430, 2, "Duskstalker_OnLeaveCombat")
RegisterUnitEvent(14430, 3, "Duskstalker_OnKilledTarget")
RegisterUnitEvent(14430, 4, "Duskstalker_OnDied")