--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WastewanderShadowMage_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderShadowMage_Shadowbolt", 8000, 0)
Unit:RegisterEvent("WastewanderShadowMage_Immolate", 10000, 2)
end

function WastewanderShadowMage_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20825, pUnit:GetMainTank()) 
end

function WastewanderShadowMage_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20826, pUnit:GetMainTank()) 
end

function WastewanderShadowMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderShadowMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderShadowMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5617, 1, "WastewanderShadowMage_OnCombat")
RegisterUnitEvent(5617, 2, "WastewanderShadowMage_OnLeaveCombat")
RegisterUnitEvent(5617, 3, "WastewanderShadowMage_OnKilledTarget")
RegisterUnitEvent(5617, 4, "WastewanderShadowMage_OnDied")