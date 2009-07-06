--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GrizzledBrownBear_OnCombat(Unit, Event)
Unit:RegisterEvent("GrizzledBrownBear_Swipe", 8000, 0)
end

function GrizzledBrownBear_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31279, pUnit:GetMainTank()) 
end

function GrizzledBrownBear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrizzledBrownBear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrizzledBrownBear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17347, 1, "GrizzledBrownBear_OnCombat")
RegisterUnitEvent(17347, 2, "GrizzledBrownBear_OnLeaveCombat")
RegisterUnitEvent(17347, 3, "GrizzledBrownBear_OnKilledTarget")
RegisterUnitEvent(17347, 4, "GrizzledBrownBear_OnDied")