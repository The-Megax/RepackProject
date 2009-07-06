--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ElderBrownBear_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderBrownBear_Swipe", 8000, 0)
end

function ElderBrownBear_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31279, pUnit:GetMainTank()) 
end

function ElderBrownBear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderBrownBear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderBrownBear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17348, 1, "ElderBrownBear_OnCombat")
RegisterUnitEvent(17348, 2, "ElderBrownBear_OnLeaveCombat")
RegisterUnitEvent(17348, 3, "ElderBrownBear_OnKilledTarget")
RegisterUnitEvent(17348, 4, "ElderBrownBear_OnDied")