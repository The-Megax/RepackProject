--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function JusticarJuliaCeleste_OnCombat(Unit, Event)
Unit:RegisterEvent("JusticarJuliaCeleste_HammerofJustice", 10000, 0)
end

function JusticarJuliaCeleste_HammerofJustice(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13005, pUnit:GetMainTank()) 
end

function JusticarJuliaCeleste_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JusticarJuliaCeleste_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JusticarJuliaCeleste_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25264, 1, "JusticarJuliaCeleste_OnCombat")
RegisterUnitEvent(25264, 2, "JusticarJuliaCeleste_OnLeaveCombat")
RegisterUnitEvent(25264, 3, "JusticarJuliaCeleste_OnKilledTarget")
RegisterUnitEvent(25264, 4, "JusticarJuliaCeleste_OnDied")