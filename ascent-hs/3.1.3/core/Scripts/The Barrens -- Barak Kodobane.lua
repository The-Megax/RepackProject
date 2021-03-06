--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BarakKodobane_OnCombat(Unit, Event)
Unit:RegisterEvent("BarakKodobane_Shoot", 6000, 0)
end

function BarakKodobane_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function BarakKodobane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BarakKodobane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BarakKodobane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3394, 1, "BarakKodobane_OnCombat")
RegisterUnitEvent(3394, 2, "BarakKodobane_OnLeaveCombat")
RegisterUnitEvent(3394, 3, "BarakKodobane_OnKilledTarget")
RegisterUnitEvent(3394, 4, "BarakKodobane_OnDied")