--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodpawShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodpawShaman_Bloodlust", 4000, 1)
Unit:RegisterEvent("BloodpawShaman_EarthShock", 6000, 0)
Unit:RegisterEvent("BloodpawShaman_Stormstrike", 8000, 0)
end

function BloodpawShaman_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function BloodpawShaman_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13281, pUnit:GetMainTank()) 
end

function BloodpawShaman_Stormstrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51876, pUnit:GetMainTank()) 
end

function BloodpawShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodpawShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodpawShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27343, 1, "BloodpawShaman_OnCombat")
RegisterUnitEvent(27343, 2, "BloodpawShaman_OnLeaveCombat")
RegisterUnitEvent(27343, 3, "BloodpawShaman_OnKilledTarget")
RegisterUnitEvent(27343, 4, "BloodpawShaman_OnDied")