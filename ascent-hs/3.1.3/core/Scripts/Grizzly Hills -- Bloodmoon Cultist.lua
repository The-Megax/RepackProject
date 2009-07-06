--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodmoonCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodmoonCultist_Enrage", 10000, 0)
Unit:RegisterEvent("BloodmoonCultist_InfectedWorgenBite", 4000, 3)
Unit:RegisterEvent("BloodmoonCultist_SinisterStrike", 6000, 0)
end

function BloodmoonCultist_Enrage(pUnit, Event) 
pUnit:CastSpell(32714) 
end

function BloodmoonCultist_InfectedWorgenBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53094, pUnit:GetMainTank()) 
end

function BloodmoonCultist_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function BloodmoonCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodmoonCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodmoonCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27024, 1, "BloodmoonCultist_OnCombat")
RegisterUnitEvent(27024, 2, "BloodmoonCultist_OnLeaveCombat")
RegisterUnitEvent(27024, 3, "BloodmoonCultist_OnKilledTarget")
RegisterUnitEvent(27024, 4, "BloodmoonCultist_OnDied")