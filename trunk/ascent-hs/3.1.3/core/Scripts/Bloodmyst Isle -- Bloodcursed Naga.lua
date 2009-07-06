--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BloodcursedNaga_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodcursedNaga_FrostArmor", 2000, 1)
Unit:RegisterEvent("BloodcursedNaga_Frostbolt", 8000, 0)
end

function BloodcursedNaga_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function BloodcursedNaga_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function BloodcursedNaga_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodcursedNaga_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodcursedNaga_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17713, 1, "BloodcursedNaga_OnCombat")
RegisterUnitEvent(17713, 2, "BloodcursedNaga_OnLeaveCombat")
RegisterUnitEvent(17713, 3, "BloodcursedNaga_OnKilledTarget")
RegisterUnitEvent(17713, 4, "BloodcursedNaga_OnDied")