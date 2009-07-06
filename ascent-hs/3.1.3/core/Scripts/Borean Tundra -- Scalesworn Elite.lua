--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ScaleswornElite_OnCombat(Unit, Event)
Unit:RegisterEvent("ScaleswornElite_ArcaneSurge", 15000, 0)
Unit:RegisterEvent("ScaleswornElite_IceShard", 10000, 0)
end

function ScaleswornElite_ArcaneSurge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61272, pUnit:GetMainTank()) 
end

function ScaleswornElite_IceShard(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61269, pUnit:GetMainTank()) 
end

function ScaleswornElite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScaleswornElite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScaleswornElite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32534, 1, "ScaleswornElite_OnCombat")
RegisterUnitEvent(32534, 2, "ScaleswornElite_OnLeaveCombat")
RegisterUnitEvent(32534, 3, "ScaleswornElite_OnKilledTarget")
RegisterUnitEvent(32534, 4, "ScaleswornElite_OnDied")