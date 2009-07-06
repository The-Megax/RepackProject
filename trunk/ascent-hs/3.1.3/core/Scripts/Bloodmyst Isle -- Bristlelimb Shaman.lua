--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BristlelimbShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlelimbShaman_FlameShock", 10000, 0)
Unit:RegisterEvent("BristlelimbShaman_ScorchingTotem", 2000, 1)
end

function BristlelimbShaman_FlameShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32967, pUnit:GetMainTank()) 
end

function BristlelimbShaman_ScorchingTotem(pUnit, Event) 
pUnit:CastSpell(32968) 
end

function BristlelimbShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlelimbShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlelimbShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17320, 1, "BristlelimbShaman_OnCombat")
RegisterUnitEvent(17320, 2, "BristlelimbShaman_OnLeaveCombat")
RegisterUnitEvent(17320, 3, "BristlelimbShaman_OnKilledTarget")
RegisterUnitEvent(17320, 4, "BristlelimbShaman_OnDied")