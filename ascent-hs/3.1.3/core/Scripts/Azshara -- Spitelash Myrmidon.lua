--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SpitelashMyrmidon_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashMyrmidon_Strike", 5000, 0)
end

function SpitelashMyrmidon_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function SpitelashMyrmidon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashMyrmidon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashMyrmidon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6196, 1, "SpitelashMyrmidon_OnCombat")
RegisterUnitEvent(6196, 2, "SpitelashMyrmidon_OnLeaveCombat")
RegisterUnitEvent(6196, 3, "SpitelashMyrmidon_OnKilledTarget")
RegisterUnitEvent(6196, 4, "SpitelashMyrmidon_OnDied")