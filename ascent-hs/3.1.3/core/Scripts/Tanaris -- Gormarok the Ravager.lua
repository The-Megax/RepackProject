--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GormaroktheRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("GormaroktheRavager_Cleave", 4000, 0)
Unit:RegisterEvent("GormaroktheRavager_Enrage", 120000, 0)
Unit:RegisterEvent("GormaroktheRavager_MortalStrike", 6000, 0)
end

function GormaroktheRavager_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function GormaroktheRavager_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function GormaroktheRavager_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function GormaroktheRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GormaroktheRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GormaroktheRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12046, 1, "GormaroktheRavager_OnCombat")
RegisterUnitEvent(12046, 2, "GormaroktheRavager_OnLeaveCombat")
RegisterUnitEvent(12046, 3, "GormaroktheRavager_OnKilledTarget")
RegisterUnitEvent(12046, 4, "GormaroktheRavager_OnDied")