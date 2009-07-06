--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EnkilahNecrolord_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahNecrolord_BoneArmor", 2000, 1)
Unit:RegisterEvent("EnkilahNecrolord_SharpenedBone", 6000, 0)
end

function EnkilahNecrolord_BoneArmor(pUnit, Event) 
pUnit:CastSpell(50324) 
end

function EnkilahNecrolord_SharpenedBone(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50323, pUnit:GetMainTank()) 
end

function EnkilahNecrolord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahNecrolord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahNecrolord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25609, 1, "EnkilahNecrolord_OnCombat")
RegisterUnitEvent(25609, 2, "EnkilahNecrolord_OnLeaveCombat")
RegisterUnitEvent(25609, 3, "EnkilahNecrolord_OnKilledTarget")
RegisterUnitEvent(25609, 4, "EnkilahNecrolord_OnDied")