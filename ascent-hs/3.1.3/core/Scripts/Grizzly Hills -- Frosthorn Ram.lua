--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FrosthornRam_OnCombat(Unit, Event)
Unit:RegisterEvent("FrosthornRam_HoofStrike", 7000, 0)
end

function FrosthornRam_HoofStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29577, pUnit:GetMainTank()) 
end

function FrosthornRam_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrosthornRam_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrosthornRam_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23740, 1, "FrosthornRam_OnCombat")
RegisterUnitEvent(23740, 2, "FrosthornRam_OnLeaveCombat")
RegisterUnitEvent(23740, 3, "FrosthornRam_OnKilledTarget")
RegisterUnitEvent(23740, 4, "FrosthornRam_OnDied")