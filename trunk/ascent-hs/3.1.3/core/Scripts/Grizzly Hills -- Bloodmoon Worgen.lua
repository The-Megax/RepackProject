--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodmoonWorgen_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodmoonWorgen_Enrage", 10000, 0)
Unit:RegisterEvent("BloodmoonWorgen_InfectedWorgenBite", 4000, 3)
Unit:RegisterEvent("BloodmoonWorgen_SinisterStrike", 6000, 0)
end

function BloodmoonWorgen_Enrage(pUnit, Event) 
pUnit:CastSpell(32714) 
end

function BloodmoonWorgen_InfectedWorgenBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53094, pUnit:GetMainTank()) 
end

function BloodmoonWorgen_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function BloodmoonWorgen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodmoonWorgen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodmoonWorgen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27020, 1, "BloodmoonWorgen_OnCombat")
RegisterUnitEvent(27020, 2, "BloodmoonWorgen_OnLeaveCombat")
RegisterUnitEvent(27020, 3, "BloodmoonWorgen_OnKilledTarget")
RegisterUnitEvent(27020, 4, "BloodmoonWorgen_OnDied")