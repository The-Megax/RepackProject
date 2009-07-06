--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EmeraldonTreeWarder_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldonTreeWarder_FaerieFire", 2000, 2)
Unit:RegisterEvent("EmeraldonTreeWarder_EntanglingRoots", 8000, 0)
end

function EmeraldonTreeWarder_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20656, pUnit:GetMainTank()) 
end

function EmeraldonTreeWarder_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20654, pUnit:GetMainTank()) 
end

function EmeraldonTreeWarder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldonTreeWarder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldonTreeWarder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12475, 1, "EmeraldonTreeWarder_OnCombat")
RegisterUnitEvent(12475, 2, "EmeraldonTreeWarder_OnLeaveCombat")
RegisterUnitEvent(12475, 3, "EmeraldonTreeWarder_OnKilledTarget")
RegisterUnitEvent(12475, 4, "EmeraldonTreeWarder_OnDied")