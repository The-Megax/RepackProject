--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ProspectorKhazgorm_OnCombat(Unit, Event)
Unit:RegisterEvent("ProspectorKhazgorm_Backhand", 8000, 0)
end

function ProspectorKhazgorm_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function ProspectorKhazgorm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ProspectorKhazgorm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ProspectorKhazgorm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5849, 1, "ProspectorKhazgorm_OnCombat")
RegisterUnitEvent(5849, 2, "ProspectorKhazgorm_OnLeaveCombat")
RegisterUnitEvent(5849, 3, "ProspectorKhazgorm_OnKilledTarget")
RegisterUnitEvent(5849, 4, "ProspectorKhazgorm_OnDied")