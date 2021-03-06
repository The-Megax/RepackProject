--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MistHowler_OnCombat(Unit, Event)
Unit:RegisterEvent("MistHowler_Rend", 10000, 0)
Unit:RegisterEvent("MistHowler_TendonRip", 8000, 0)
Unit:RegisterEvent("MistHowler_TerrifyingHowl", 11000, 0)
end

function MistHowler_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function MistHowler_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function MistHowler_TerrifyingHowl(pUnit, Event) 
pUnit:CastSpell(8715) 
end

function MistHowler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MistHowler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MistHowler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10644, 1, "MistHowler_OnCombat")
RegisterUnitEvent(10644, 2, "MistHowler_OnLeaveCombat")
RegisterUnitEvent(10644, 3, "MistHowler_OnKilledTarget")
RegisterUnitEvent(10644, 4, "MistHowler_OnDied")