--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MagmothCrusher_OnCombat(Unit, Event)
Unit:RegisterEvent("MagmothCrusher_MagnataurCharge", 8000, 0)
Unit:RegisterEvent("MagmothCrusher_TuskStrike", 7000, 0)
end

function MagmothCrusher_MagnataurCharge(pUnit, Event) 
pUnit:CastSpell(50413) 
end

function MagmothCrusher_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function MagmothCrusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagmothCrusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagmothCrusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25434, 1, "MagmothCrusher_OnCombat")
RegisterUnitEvent(25434, 2, "MagmothCrusher_OnLeaveCombat")
RegisterUnitEvent(25434, 3, "MagmothCrusher_OnKilledTarget")
RegisterUnitEvent(25434, 4, "MagmothCrusher_OnDied")