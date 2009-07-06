--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function JormungarTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("JormungarTunneler_CorrodeFlesh", 4000, 1)
end

function JormungarTunneler_CorrodeFlesh(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51879, pUnit:GetMainTank()) 
end

function JormungarTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JormungarTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JormungarTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26467, 1, "JormungarTunneler_OnCombat")
RegisterUnitEvent(26467, 2, "JormungarTunneler_OnLeaveCombat")
RegisterUnitEvent(26467, 3, "JormungarTunneler_OnKilledTarget")
RegisterUnitEvent(26467, 4, "JormungarTunneler_OnDied")