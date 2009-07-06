--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FordragonGryphonRider_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonGryphonRider_Stormhammer", 9000, 0)
end

function FordragonGryphonRider_Stormhammer(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49482, pUnit:GetMainTank()) 
end

function FordragonGryphonRider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonGryphonRider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonGryphonRider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27521, 1, "FordragonGryphonRider_OnCombat")
RegisterUnitEvent(27521, 2, "FordragonGryphonRider_OnLeaveCombat")
RegisterUnitEvent(27521, 3, "FordragonGryphonRider_OnKilledTarget")
RegisterUnitEvent(27521, 4, "FordragonGryphonRider_OnDied")