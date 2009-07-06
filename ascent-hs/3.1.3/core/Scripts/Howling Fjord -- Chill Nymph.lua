--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ChillNymph_OnCombat(Unit, Event)
Unit:RegisterEvent("ChillNymph_SummonScarletBud", 1000, 1)
Unit:RegisterEvent("ChillNymph_Wrath", 6000, 0)
end

function ChillNymph_SummonScarletBud(pUnit, Event) 
pUnit:CastSpell(42388) 
end

function ChillNymph_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function ChillNymph_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChillNymph_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChillNymph_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23678, 1, "ChillNymph_OnCombat")
RegisterUnitEvent(23678, 2, "ChillNymph_OnLeaveCombat")
RegisterUnitEvent(23678, 3, "ChillNymph_OnKilledTarget")
RegisterUnitEvent(23678, 4, "ChillNymph_OnDied")