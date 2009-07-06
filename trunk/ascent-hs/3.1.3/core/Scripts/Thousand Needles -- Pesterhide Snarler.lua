--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function PesterhideSnarler_OnCombat(Unit, Event)
Unit:RegisterEvent("PesterhideSnarler_IntimidatingGrowl", 8000, 0)
end

function PesterhideSnarler_IntimidatingGrowl(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6576, pUnit:GetMainTank()) 
end

function PesterhideSnarler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PesterhideSnarler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PesterhideSnarler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4249, 1, "PesterhideSnarler_OnCombat")
RegisterUnitEvent(4249, 2, "PesterhideSnarler_OnLeaveCombat")
RegisterUnitEvent(4249, 3, "PesterhideSnarler_OnKilledTarget")
RegisterUnitEvent(4249, 4, "PesterhideSnarler_OnDied")