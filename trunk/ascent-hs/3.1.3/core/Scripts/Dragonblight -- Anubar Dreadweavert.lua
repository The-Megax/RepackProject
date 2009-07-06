--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AnubarDreadweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarDreadweaver_Corruption", 5000, 1)
Unit:RegisterEvent("AnubarDreadweaver_ShadowBolt", 8000, 0)
end

function AnubarDreadweaver_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32063, pUnit:GetMainTank()) 
end

function AnubarDreadweaver_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AnubarDreadweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarDreadweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarDreadweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26413, 1, "AnubarDreadweaver_OnCombat")
RegisterUnitEvent(26413, 2, "AnubarDreadweaver_OnLeaveCombat")
RegisterUnitEvent(26413, 3, "AnubarDreadweaver_OnKilledTarget")
RegisterUnitEvent(26413, 4, "AnubarDreadweaver_OnDied")