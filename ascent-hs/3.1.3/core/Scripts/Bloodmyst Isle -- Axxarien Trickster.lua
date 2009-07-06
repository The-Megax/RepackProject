--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AxxarienTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("AxxarienTrickster_Eviscerate", 10000, 0)
end

function AxxarienTrickster_Eviscerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15691, pUnit:GetMainTank()) 
end

function AxxarienTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AxxarienTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AxxarienTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17341, 1, "AxxarienTrickster_OnCombat")
RegisterUnitEvent(17341, 2, "AxxarienTrickster_OnLeaveCombat")
RegisterUnitEvent(17341, 3, "AxxarienTrickster_OnKilledTarget")
RegisterUnitEvent(17341, 4, "AxxarienTrickster_OnDied")