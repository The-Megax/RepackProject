--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AxxarienShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("AxxarienShadowstalker_Corruption", 8000, 0)
end

function AxxarienShadowstalker_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21068, pUnit:GetMainTank()) 
end

function AxxarienShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AxxarienShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AxxarienShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17340, 1, "AxxarienShadowstalker_OnCombat")
RegisterUnitEvent(17340, 2, "AxxarienShadowstalker_OnLeaveCombat")
RegisterUnitEvent(17340, 3, "AxxarienShadowstalker_OnKilledTarget")
RegisterUnitEvent(17340, 4, "AxxarienShadowstalker_OnDied")