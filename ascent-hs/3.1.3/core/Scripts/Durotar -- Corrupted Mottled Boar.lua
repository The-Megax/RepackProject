--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CorruptedMottledBoar_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedMottledBoar_CorruptedIntellect", 10000, 0)
Unit:RegisterEvent("CorruptedMottledBoar_BoarCharge", 6000, 0)
end

function CorruptedMottledBoar_CorruptedIntellect(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6818, pUnit:GetMainTank()) 
end

function CorruptedMottledBoar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function CorruptedMottledBoar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedMottledBoar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedMottledBoar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3225, 1, "CorruptedMottledBoar_OnCombat")
RegisterUnitEvent(3225, 2, "CorruptedMottledBoar_OnLeaveCombat")
RegisterUnitEvent(3225, 3, "CorruptedMottledBoar_OnKilledTarget")
RegisterUnitEvent(3225, 4, "CorruptedMottledBoar_OnDied")