--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodsporeFirestarter_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodsporeFirestarter_Fireball", 8000, 0)
Unit:RegisterEvent("BloodsporeFirestarter_FlamingTouch", 3000, 1)
Unit:RegisterEvent("BloodsporeFirestarter_MoltenArmor", 6000, 1)
end

function BloodsporeFirestarter_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function BloodsporeFirestarter_FlamingTouch(pUnit, Event) 
pUnit:CastSpell(45985) 
end

function BloodsporeFirestarter_MoltenArmor(pUnit, Event) 
pUnit:CastSpell(35916) 
end

function BloodsporeFirestarter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodsporeFirestarter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodsporeFirestarter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25470, 1, "BloodsporeFirestarter_OnCombat")
RegisterUnitEvent(25470, 2, "BloodsporeFirestarter_OnLeaveCombat")
RegisterUnitEvent(25470, 3, "BloodsporeFirestarter_OnKilledTarget")
RegisterUnitEvent(25470, 4, "BloodsporeFirestarter_OnDied")