--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DeepmossHatchling_OnCombat(Unit, Event)
Unit:RegisterEvent("DaughterofCenarius_SummonDeepmossMatriarch", 4000, 1)
end

function DeepmossCreeper_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function DaughterofCenarius_SummonDeepmossMatriarch(pUnit, Event) 
pUnit:CastSpell(6536) 
end

function DeepmossHatchling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeepmossHatchling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeepmossHatchling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4263, 1, "DeepmossHatchling_OnCombat")
RegisterUnitEvent(4263, 2, "DeepmossHatchling_OnLeaveCombat")
RegisterUnitEvent(4263, 3, "DeepmossHatchling_OnKilledTarget")
RegisterUnitEvent(4263, 4, "DeepmossHatchling_OnDied")