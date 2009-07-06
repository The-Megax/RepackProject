--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function FrigidNecromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidNecromancer_BoneArmor", 2000, 1)
Unit:RegisterEvent("FrigidNecromancer_ShadowBolt", 7000, 0)
end

function FrigidNecromancer_BoneArmor(pUnit, Event) 
pUnit:CastSpell(50324) 
end

function FrigidNecromancer_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function FrigidNecromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidNecromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidNecromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27539, 1, "FrigidNecromancer_OnCombat")
RegisterUnitEvent(27539, 2, "FrigidNecromancer_OnLeaveCombat")
RegisterUnitEvent(27539, 3, "FrigidNecromancer_OnKilledTarget")
RegisterUnitEvent(27539, 4, "FrigidNecromancer_OnDied")