--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VileSting_OnCombat(Unit, Event)
Unit:RegisterEvent("VileSting_VenomSting", 10000, 0)
end

function VileSting_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8257, pUnit:GetMainTank()) 
end

function VileSting_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VileSting_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VileSting_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5937, 1, "VileSting_OnCombat")
RegisterUnitEvent(5937, 2, "VileSting_OnLeaveCombat")
RegisterUnitEvent(5937, 3, "VileSting_OnKilledTarget")
RegisterUnitEvent(5937, 4, "VileSting_OnDied")