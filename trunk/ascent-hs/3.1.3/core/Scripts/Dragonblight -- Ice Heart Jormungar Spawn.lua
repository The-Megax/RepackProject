--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IceHeartJormungarSpawn_OnCombat(Unit, Event)
Unit:RegisterEvent("IceHeartJormungarSpawn_GutRip", 5000, 3)
end

function IceHeartJormungarSpawn_GutRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43358, pUnit:GetMainTank()) 
end

function IceHeartJormungarSpawn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceHeartJormungarSpawn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceHeartJormungarSpawn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26359, 1, "IceHeartJormungarSpawn_OnCombat")
RegisterUnitEvent(26359, 2, "IceHeartJormungarSpawn_OnLeaveCombat")
RegisterUnitEvent(26359, 3, "IceHeartJormungarSpawn_OnKilledTarget")
RegisterUnitEvent(26359, 4, "IceHeartJormungarSpawn_OnDied")