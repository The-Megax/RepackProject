--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GravelsnoutVermin_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutVermin_InfectedWound", 10000, 0)
end

function GravelsnoutVermin_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3427, pUnit:GetMainTank()) 
end

function GravelsnoutVermin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutVermin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutVermin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4112, 1, "GravelsnoutVermin_OnCombat")
RegisterUnitEvent(4112, 2, "GravelsnoutVermin_OnLeaveCombat")
RegisterUnitEvent(4112, 3, "GravelsnoutVermin_OnKilledTarget")
RegisterUnitEvent(4112, 4, "GravelsnoutVermin_OnDied")