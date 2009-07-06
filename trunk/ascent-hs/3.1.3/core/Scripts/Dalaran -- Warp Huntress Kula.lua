--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WarpHuntressKula_OnCombat(Unit, Event)
Unit:RegisterEvent("WarpHuntressKula_ShootGun", 6000, 0)
end

function WarpHuntressKula_ShootGun(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61353, pUnit:GetMainTank()) 
end

function WarpHuntressKula_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarpHuntressKula_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarpHuntressKula_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32711, 1, "WarpHuntressKula_OnCombat")
RegisterUnitEvent(32711, 2, "WarpHuntressKula_OnLeaveCombat")
RegisterUnitEvent(32711, 3, "WarpHuntressKula_OnKilledTarget")
RegisterUnitEvent(32711, 4, "WarpHuntressKula_OnDied")