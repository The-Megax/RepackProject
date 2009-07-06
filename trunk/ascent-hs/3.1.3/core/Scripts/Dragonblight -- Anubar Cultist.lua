--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AnubarCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarCultist_Empower", 2000, 1)
Unit:RegisterEvent("AnubarCultist_ShadowBolt", 8000, 0)
Unit:RegisterEvent("AnubarCultist_Zeal", 3000, 1)
end

function AnubarCultist_Empower(pUnit, Event) 
pUnit:CastSpell(47257) 
end

function AnubarCultist_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AnubarCultist_Zeal(pUnit, Event) 
pUnit:CastSpell(51605) 
end

function AnubarCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26319, 1, "AnubarCultist_OnCombat")
RegisterUnitEvent(26319, 2, "AnubarCultist_OnLeaveCombat")
RegisterUnitEvent(26319, 3, "AnubarCultist_OnKilledTarget")
RegisterUnitEvent(26319, 4, "AnubarCultist_OnDied")