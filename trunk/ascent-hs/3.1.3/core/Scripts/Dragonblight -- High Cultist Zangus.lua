--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HighCultistZangus_OnCombat(Unit, Event)
Unit:RegisterEvent("HighCultistZangus_ShadowBolt", 7000, 0)
Unit:RegisterEvent("HighCultistZangus_Zeal", 2000, 1)
end

function HighCultistZangus_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function HighCultistZangus_Zeal(pUnit, Event) 
pUnit:CastSpell(51605) 
end

function HighCultistZangus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighCultistZangus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighCultistZangus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26655, 1, "HighCultistZangus_OnCombat")
RegisterUnitEvent(26655, 2, "HighCultistZangus_OnLeaveCombat")
RegisterUnitEvent(26655, 3, "HighCultistZangus_OnKilledTarget")
RegisterUnitEvent(26655, 4, "HighCultistZangus_OnDied")