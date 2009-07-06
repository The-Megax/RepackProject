--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodfeatherSorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherSorceress_FrostArmor", 2000, 2)
Unit:RegisterEvent("BloodfeatherSorceress_Fireball", 8000, 0)
end

function BloodfeatherSorceress_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function BloodfeatherSorceress_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function BloodfeatherSorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherSorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherSorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2018, 1, "BloodfeatherSorceress_OnCombat")
RegisterUnitEvent(2018, 2, "BloodfeatherSorceress_OnLeaveCombat")
RegisterUnitEvent(2018, 3, "BloodfeatherSorceress_OnKilledTarget")
RegisterUnitEvent(2018, 4, "BloodfeatherSorceress_OnDied")