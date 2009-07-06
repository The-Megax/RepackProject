--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WrathtailMyrmidon_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailMyrmidon_Rend", 8000, 0)
Unit:RegisterEvent("WrathtailMyrmidon_Strike", 6000, 0)
end

function WrathtailMyrmidon_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function WrathtailMyrmidon_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WrathtailMyrmidon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailMyrmidon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailMyrmidon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3711, 1, "WrathtailMyrmidon_OnCombat")
RegisterUnitEvent(3711, 2, "WrathtailMyrmidon_OnLeaveCombat")
RegisterUnitEvent(3711, 3, "WrathtailMyrmidon_OnKilledTarget")
RegisterUnitEvent(3711, 4, "WrathtailMyrmidon_OnDied")