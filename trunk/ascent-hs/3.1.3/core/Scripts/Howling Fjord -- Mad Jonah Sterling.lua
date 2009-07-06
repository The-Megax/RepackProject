--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MadJonahSterling_OnCombat(Unit, Event)
Unit:RegisterEvent("MadJonahSterling_WildlyFlailing", 6000, 0)
end

function MadJonahSterling_WildlyFlailing(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50188, pUnit:GetMainTank()) 
end

function MadJonahSterling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MadJonahSterling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MadJonahSterling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24742, 1, "MadJonahSterling_OnCombat")
RegisterUnitEvent(24742, 2, "MadJonahSterling_OnLeaveCombat")
RegisterUnitEvent(24742, 3, "MadJonahSterling_OnKilledTarget")
RegisterUnitEvent(24742, 4, "MadJonahSterling_OnDied")