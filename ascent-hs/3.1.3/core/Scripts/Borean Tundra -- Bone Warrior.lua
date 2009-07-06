--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BoneWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("BoneWarrior_SunderArmor", 6000, 0)
end

function BoneWarrior_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50370, pUnit:GetMainTank()) 
end

function BoneWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BoneWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BoneWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26126, 1, "BoneWarrior_OnCombat")
RegisterUnitEvent(26126, 2, "BoneWarrior_OnLeaveCombat")
RegisterUnitEvent(26126, 3, "BoneWarrior_OnKilledTarget")
RegisterUnitEvent(26126, 4, "BoneWarrior_OnDied")