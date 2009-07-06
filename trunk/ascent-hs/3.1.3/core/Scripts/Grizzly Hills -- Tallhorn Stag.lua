--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TallhornStag_OnCombat(Unit, Event)
Unit:RegisterEvent("TallhornStag_Gore", 10000, 0)
end

function TallhornStag_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function TallhornStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TallhornStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TallhornStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26363, 1, "TallhornStag_OnCombat")
RegisterUnitEvent(26363, 2, "TallhornStag_OnLeaveCombat")
RegisterUnitEvent(26363, 3, "TallhornStag_OnKilledTarget")
RegisterUnitEvent(26363, 4, "TallhornStag_OnDied")