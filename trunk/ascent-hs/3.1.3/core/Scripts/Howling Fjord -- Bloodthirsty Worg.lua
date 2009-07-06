--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodthirstyWorg_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodthirstyWorg_InfectedBite", 10000, 0)
end

function BloodthirstyWorg_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7367, pUnit:GetMainTank()) 
end

function BloodthirstyWorg_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodthirstyWorg_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodthirstyWorg_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24475, 1, "BloodthirstyWorg_OnCombat")
RegisterUnitEvent(24475, 2, "BloodthirstyWorg_OnLeaveCombat")
RegisterUnitEvent(24475, 3, "BloodthirstyWorg_OnKilledTarget")
RegisterUnitEvent(24475, 4, "BloodthirstyWorg_OnDied")