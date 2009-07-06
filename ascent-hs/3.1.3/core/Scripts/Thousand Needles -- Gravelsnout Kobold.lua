--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GravelsnoutKobold_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutKobold_Strike", 4000, 0)
end

function GravelsnoutKobold_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GravelsnoutKobold_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutKobold_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutKobold_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4111, 1, "GravelsnoutKobold_OnCombat")
RegisterUnitEvent(4111, 2, "GravelsnoutKobold_OnLeaveCombat")
RegisterUnitEvent(4111, 3, "GravelsnoutKobold_OnKilledTarget")
RegisterUnitEvent(4111, 4, "GravelsnoutKobold_OnDied")