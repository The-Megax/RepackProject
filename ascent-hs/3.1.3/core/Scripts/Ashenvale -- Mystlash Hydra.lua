--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MystlashHydra_OnCombat(Unit, Event)
Unit:RegisterEvent("MystlashHydra_VenomSpit", 8000, 0)
end

function MystlashHydra_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6917, pUnit:GetMainTank()) 
end

function MystlashHydra_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MystlashHydra_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MystlashHydra_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3721, 1, "MystlashHydra_OnCombat")
RegisterUnitEvent(3721, 2, "MystlashHydra_OnLeaveCombat")
RegisterUnitEvent(3721, 3, "MystlashHydra_OnKilledTarget")
RegisterUnitEvent(3721, 4, "MystlashHydra_OnDied")