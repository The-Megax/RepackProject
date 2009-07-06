--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WastewanderRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderRogue_Backstab", 5000, 0)
end

function WastewanderRogue_Backstab(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8721, pUnit:GetMainTank()) 
end

function WastewanderRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5615, 1, "WastewanderRogue_OnCombat")
RegisterUnitEvent(5615, 2, "WastewanderRogue_OnLeaveCombat")
RegisterUnitEvent(5615, 3, "WastewanderRogue_OnKilledTarget")
RegisterUnitEvent(5615, 4, "WastewanderRogue_OnDied")