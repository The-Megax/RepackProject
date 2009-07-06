--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MoongrazeBuck_OnCombat(Unit, Event)
Unit:RegisterEvent("MoongrazeBuck_Knockdown", 7000, 0)
end

function MoongrazeBuck_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31274, pUnit:GetMainTank()) 
end

function MoongrazeBuck_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoongrazeBuck_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoongrazeBuck_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17201, 1, "MoongrazeBuck_OnCombat")
RegisterUnitEvent(17201, 2, "MoongrazeBuck_OnLeaveCombat")
RegisterUnitEvent(17201, 3, "MoongrazeBuck_OnKilledTarget")
RegisterUnitEvent(17201, 4, "MoongrazeBuck_OnDied")